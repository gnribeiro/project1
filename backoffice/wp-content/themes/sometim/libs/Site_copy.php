<?php 

   
    class Site extends Base
    {
        
        function __construct()
        {
            parent::__construct();
        
        }

        public function &get_child_pages_content_page($level = false){
            global $post;

            if($level == false){

                if(!$post->post_parent){
                    $level   =  $post->ID; 
                }
                else{
                    $parents = array_reverse( get_ancestors( $post->ID, 'page' ));
                    $level   =  $parents[0]; 
                }    
                
            }

            $childrens = array();
            $child     = get_pages('sort_column=menu_order&hierarchical=0&parent='.$level);

            if( count( $child ) != 0 ){

                foreach ($child  as $key => $value) {
                    $childrens[$key]['id']   = $value->ID;
                    $childrens[$key]['name'] = $value->post_title;
                    $childrens[$key]['link'] = get_permalink($value->ID);
                    $childrens[$key]['children']  =  $this->get_child_pages_content_page($value->ID);
                }
            }
            return $childrens;
        }


        public function homepage(){
            global $post;

            $data = array();
            $cat  = get_field('categoria_de_produto_hp' , $post->ID);

            $id_cat = get_term_by('slug', $cat, 'product_cat');
            $id_cat = icl_object_id($id_cat->term_id, 'category', true);
            $catobj = get_term_by('id', $id_cat , 'product_cat');
            $cat    =  $catobj->slug;

            $data['slideshow']  = $this->slideshow();
            $data['highlights'] = $this->get_home_highlights($cat);
            $data['links']      = $this->homepage_links( $cat);
            return $data;
        } 

        
        public function homepage_promotions(){
            global $post;
            
            $cat  = get_field('categoria_de_produto_hp' , $post->ID);

            $args = array(
                'post_type'             => 'page',
                'post_status'           => 'publish',
                'ignore_sticky_posts'   => 1,
                'posts_per_page'        => 1,
                'orderby'               => 'menu_order',
                'meta_query'            => array(
                    array(
                        'key'       => 'categoria_de_produto_hp',
                        'value'     =>  $cat,
                        'compare'   => 'like'
                    ),
                    array(
                        'key'       => 'homepage_link',
                        'value'     => 1,
                        'compare'   => '=',
                        'type'      =>'NUMERIC'
                    )
                )
            );
       

            return new WP_Query(  $args );
        }
        

        public function homepage_links($cat = ''){
            $args = array(
                'post_type'             => 'page',
                'post_status'           => 'publish',
                'ignore_sticky_posts'   => 1,
                'posts_per_page'        => 2,
                'orderby'               => 'menu_order',
                'meta_query'            => array(
                    array(
                        'key'       => 'homepage_link',
                        'value'     => 1,
                        'compare'   => '=',
                        'type'      =>'NUMERIC'
                    ),
                    array(
                        'key'       => 'categoria_de_produto_hp',
                        'value'     =>  '',
                        'compare'   => 'NOT EXISTS'
                    ),
                )
            );


            $hp_links       = new WP_Query(  $args );      

            //_pr( $hp_links );      
            $hp_first_link  =   $this->homepage_promotions();

            //array_shift( $hp_links->posts );

            $this->view->hp_cat        = $cat;
            $this->view->hp_first_link = $hp_first_link->posts ;
            $this->view->hp_links      = $hp_links->posts;



            return $this->view->render('homepage/links');

        }  

          public function multibanco($_mb_reference, $order_total){
             $multibanco = get_page_by_path("pagamento-via-multibanco",OBJECT,'post');
             $multibanco = icl_object_id( $multibanco->ID, 'post', true );
             $multibanco  = get_post($multibanco);
    

            $this->view->multibanco   = $multibanco;
            $this->view->mb_reference = $_mb_reference;
            $this->view->order_total  = $order_total;

            return $this->view->render('checkout/metodos_pagamento/multibanco');
          }

          public function visa($mb_link){
             $cretcart = get_page_by_path("pagamento-via-cartao-de-credito",OBJECT,'post');
             $cretcart = icl_object_id( $cretcart->ID, 'post', true );
             $cretcart  = get_post($cretcart);
    

            $this->view->cretcart  = $cretcart;
            $this->view->mb_link   = $mb_link;
            
            return $this->view->render('checkout/metodos_pagamento/visa');
          }


        public function faq_intro(){

            $args = array(
                'post_type'             => 'faqs',
                'post_status'           => 'publish',
                'ignore_sticky_posts'   => 1,
                'posts_per_page'        => 3,
                'orderby'               => 'menu_order',
                'meta_query'            => array(
                    array(
                        'key'       => 'intro',
                        'value'     => 1,
                        'compare'   => '=',
                        'type'      =>'NUMERIC'
                    )
                )
            );


            return new WP_Query(  $args );

        }


        public function prd_promotions($id  , $cat){
            $categories = array();

            // $data = get_posts(array(
            //     'post_type'           => 'product',
            //     'product_cat'       => $cat,
            //     'post_status'         => 'publish',
            //     'ignore_sticky_posts' => 1,
            //     'meta_query' => array(
            //         array(
            //             'key'   => 'promotions_prd_acf', 
            //             'value' => $id , 
            //             'compare' => 'LIKE'
            //         )
            //     )
            // ));


            $data = get_posts(array(
                'post_type'           => 'product',
                'product_cat'         => $cat,
                'post_status'         => 'publish',
                'ignore_sticky_posts' => 1,
                'post__in'    => $id,
            ));

            foreach ($data  as $key => $value) {
                $cat = wp_get_post_terms( $value->ID , 'product_cat');

              

                //if(count( $categories[$cat[0]->slug])  > 2 )
                   // continue;

                $categories[$cat[0]->slug]['posts'][] = array(
                    'id'      => $value->ID,
                    'title'   => $value->post_title,
                    'content' => $value->post_excerpt,
                );    

                $categories[$cat[0]->slug]['name'] =  $cat[0]->name;
            }


            return $categories;
        }




        public function list_prd_promotions( $cat , $id )
        {
            $categories = array();
            
            global $hicpo;
            global $wpdb;
            global $wp;

            $per_page = (isset($_GET['prd_display']) && is_numeric($_GET['prd_display'])) ? esc_attr($_GET['prd_display']) : 10 ;
            $paged    = 1;

            if($wp->query_vars['paged']) {
                $paged = explode('/' , $wp->query_vars['paged']);
                $paged = $paged[2];
            }

          //_pr($cat);


            $args = array(
                'post_type'           => 'product',
                'post_status'         => 'publish',
                'ignore_sticky_posts' => 1,
                'posts_per_page'      =>  $per_page, 
                'paged'               => $paged,
                'post__in'            => $id,
                'tax_query' => array(
                    array(
                        'taxonomy' => 'product_cat',
                        'field'    => 'id',
                        'terms'    => array( $cat->term_id),
                        'operator' => 'in',
                        'include_children' => false,
                        'type'      => 'NUMERIC'
                    ),
                ),
                
                            
            );


            if(isset($_GET['orderby'])){

                if( $_GET['orderby'] !=='menu_order')
                    remove_filter( 'pre_get_posts', array( $hicpo, 'hicpo_pre_get_posts' ) );

                $orderby_value =  wc_clean( $_GET['orderby'] ) ; 
                $orderby_value = explode( '-', $orderby_value );
                $orderby       = esc_attr( $orderby_value[0] );
                $order         = ! empty( $orderby_value[1] ) ? $orderby_value[1] : $order;
                
                $orderby = strtolower( $orderby );
                $order   = strtoupper( $order );

                switch ( $orderby ) {
                    case 'date' :
                        $args['orderby']  = 'date';
                        $args['order']    = $order == 'ASC' ? 'ASC' : 'DESC';
                    break;
                    case 'price' :
                        $args['orderby']  = "meta_value_num {$wpdb->posts}.ID";
                        $args['order']    = $order == 'DESC' ? 'DESC' : 'ASC';
                        $args['meta_key'] = '_price';
                    break;
                    case 'popularity' :
                        $args['meta_key'] = 'total_sales';
                    break;

                    case 'title' :
                        $args['orderby']  = 'title';
                        $args['order']    = $order == 'DESC' ? 'DESC' : 'ASC';
                    break;
                }

            }
            
            $data  = new WP_Query($args);
        
         
            return $data;
        }


        public function promotion_orderby(){
            return  array(
                array(
                    'value' => 'menu_order',
                    'title' => 'Ordenar'     
                ),
                 array(
                    'value' => 'title-asc',
                    'title' => 'Alfabética' 
                ),
                  array(
                    'value' => 'price-desc',
                    'title' => 'Preço descendente' 
                ),
                 array(
                    'value' => 'price-asc',
                    'title' => 'Preço ascendente' 
                )
            );
        }


        public function pagination_promo($num_pages){
            $big = 999999999;
            global $wp;

            if($wp->query_vars['paged']) {
                $paged = explode('/' , $wp->query_vars['paged']);
                $paged = $paged[2];
            }
            else{
                 $paged = 1;
            }
            

            $pagination = paginate_links( array(
                'base'         => esc_url( str_replace( 999999999, '%#%', remove_query_arg( 'add-to-cart', htmlspecialchars_decode( get_pagenum_link( 999999999 ) ) ) ) ),
                'format'    => '?page=%#%',
                'prev_text' => __( '&laquo;', 'text-domain' ),
                'next_text' => __( '&raquo;', 'text-domain' ),
                'total'     => $num_pages,
                'current'   =>  max(1 , $paged ),
            ) );

            return $pagination;
        }

        
        protected function slideshow(){
            $this->view->slides   = get_posts(array(
                'post_type'      => 'homepageslideshow',
                'posts_per_page' => -1,
                'order'          => 'ASC',
                'orderby'        => 'menu_order',
                'post_status'    => 'publish',
            ));
        
            return $this->view->render('slideshow');
        }


        protected function get_home_highlights( $cat = false ){
            $cat = (!$cat) ? 'home-audio' :  $cat; 

            $cat_parent =get_term_by('slug' ,  $cat , "product_cat"); 

            $this->view->highlights = get_categories( array(
                  'orderby'    => 'id',
                  'taxonomy'   => 'product_cat',
                  'parent'     => $cat_parent->term_id,
                  'hide_empty' => 0,
                )
            );


           return $this->view->render('homepage/highlights');

        }


        public function subscribe_user_newsletter(){
            if( is_user_logged_in() ){
                if( false === ($user_id = get_transient('subscribe_user_newsletter')) ){
                  
                    $user_id = get_current_user_id();
                    $user    = get_userdata( $user_id );
                    
                    $field = array(
                        'ne'   => $user ->data->user_email,
                        'lang' => ICL_LANGUAGE_CODE,
                        'name' => get_user_meta($user_id , 'billing_first_name' , true)
                    );

                    set_transient('subscribe_user_newsletter', $user_id, 60*30);
                    
                    $this->subscription_knews( $field );
                }
            }
        }


        public function newsletter_list(){
             global $wpdb;
             $knewslists  = $wpdb->prefix . 'knewslists';

             return  $wpdb->get_results('SELECT name , id FROM  '.$knewslists.' WHERE id !=  1');
        }


        public function add_user_to_newsletter_list($lists = array()){
            global $wpdb;
            
            if(!count($lists ))
                return ;
            
            $user_id = get_current_user_id();
           

            $user_id = $this->get_user_newsletter_id();
            

            $knewsuserslists  = $wpdb->prefix . 'knewsuserslists';

            $query   = "DELETE  from " . $knewsuserslists . " where id_user = ".$user_id ."  and  id_list != 1";
            $results = $wpdb->query( $query);


            
            foreach ($lists  as  $value) {
                 $query   = "INSERT INTO " . $knewsuserslists . " (id_user, id_list) VALUES (" . $user_id . ", " . $value . ")";
                 $results = $wpdb->query( $query );
            }
        }

        public function upadate_user_newsletter_list(){
            
            if ( 'POST' !== strtoupper( $_SERVER[ 'REQUEST_METHOD' ] ) ) {
                
                return;
            }

            if ( empty( $_POST[ 'action_newsletter_exgry' ] ) || ( $_POST[ 'action_newsletter_exgry' ] !== 'update_user_newsletter_exg' ) || empty( $_POST['_wpnonce'] ) ||  !$_POST['newsletters_lists'] ) {
               
                return;
            }

            $this->add_user_to_newsletter_list($_POST["newsletters_lists"]);
        }



         public function get_user_newsletter_id(){
            global $wpdb;
            
            $user_id = get_current_user_id();
            $user              = get_userdata( $user_id );
            $email             = $user->data->user_email;
            $knewsusers_table  = $wpdb->prefix . 'knewsusers';

             $id = $wpdb->get_row('SELECT id FROM  '.$knewsusers_table.' WHERE email = "'.$email.'";');

             return $id->id;
        }

      
        public function user_newsletter_list(){
            global $wpdb;

            $lists            = array();
            $user_id          = $this->get_user_newsletter_id();
            $knewsuserslists  = $wpdb->prefix . 'knewsuserslists';

            
            
            $results =  $wpdb->get_results('SELECT id_list  FROM  '.$knewsuserslists.' WHERE id_list !=  1 and id_user = '. $user_id  );

            foreach ($results as $value) {
                $lists[] = $value->id_list;
            }

            return $lists;
        }




        public function subscription_knews($posts = false){
            global $wpdb;

            if($posts === false)
                return;
            
            $email               = $posts['ne'];
            $knewsusers_table    = $wpdb->prefix . 'knewsusers';
            $knewsuserslists_tb  = $wpdb->prefix . 'knewsuserslists';
            $knewsusersextra     = $wpdb->prefix . 'knewsusersextra';
           

            $email_exist        = $wpdb->get_row('SELECT * FROM  '.$knewsusers_table.' WHERE email = "'.$email.'";');

            if( empty($email_exist) || !$email_exist ){
              
                $args    = array(
                    'lang'    => $posts['lang'], 
                    'email'   => $email, 
                    'state'   => '2', 
                    'ip'      => '', 
                    'confkey' => $this->get_unique_id(),
                    'joined'  => date("Y-m-d H:i:s")
                );
         
                $results = $wpdb->insert( $knewsusers_table , $args );

                if($results){
                    $user_id = ($wpdb->insert_id !=0 ) ?$wpdb->insert_id : mysql_insert_id();

                    $query   = "INSERT INTO " . $knewsusersextra . " (user_id, field_id , value) VALUES (" . $user_id . ", 1 ,'" . $posts['name'] . "')";
                    $results = $wpdb->query( $query );

                    $query   = "INSERT INTO " . $knewsuserslists_tb . " (id_user, id_list) VALUES (" . $user_id . ", 1);";
                    $results = $wpdb->query( $query );
                }
            }        
        }


       


        private function get_unique_id($long=8) {
            return substr(md5(uniqid()), $long * -1);
        }

        public function get_sitemap(){
            $li = $this->get_prd_cats();
            $teste = array();
            $params = array(0 , &$teste );

            array_walk($li, array($this, 'get_cats_prd'), $params);

             $this->get_children_prd($teste , $li) ;

             $html = ''; 
             

             return $this->get_cats_prd_html($teste , $html , $level);
        }

        public function &get_cats_prd_html($prd , &$html){
          

            if(is_array($prd)){
                $html .=  '<ul>';


                foreach ($prd as $key => $value) {
                    $first = ($value['category_parent'] == 0) ? true : false;
                    $class = ($first) ? 'col-sm-6' : ''; 
                    // $term  = get_term(   $value['id']  , 'product_cat' );
                    // $link  =  get_term_link(   $term->term_id   , 'product_cat' );
                    $link  = get_term_link( (int) $value['id'], 'product_cat' );

                    $html .=  '<li class="item-'.$value['category_parent'].'  '.$class .' '.$value['id'].'">';

                    if( $first)  
                    {
                        $html .= '<div class="clearfix"><h1><a href="'.$link.'" >'.$value['name'].'</a></h1></div>';
                    }  
                    else{
                        $html .= '<a href="'.$link.'" >'.$value['name'].'</a>';
                    }


                    if($value['children']){
                        $this->get_cats_prd_html($value['children'] ,  $html , $level);
                    }
                    else{
                        $html .= '</li>'; 
                    }

                }

                $html .=  '</ul>';
            }

            return $html ;
        }
        
        function get_cats_prd(&$item1, $key, $params)
        {            
            if($item1->category_parent == $params[0]){
                $params[1][$key]['name'] = $item1->name ;
                $params[1][$key]['id']  = $item1->term_id ;
                $params[1][$key]['category_parent']  = $item1->category_parent ; 
            }

            return $params[1];
        }

            
        function &get_children_prd (&$teste , $li){
            if(is_array($teste )){
                foreach ($teste as $key => $value) {
                          
                $params = array($value['id'], &$teste[$key]['children'] ); 
                    array_walk($li, array($this, 'get_cats_prd') , $params);
                    $this->get_children_prd($teste[$key]['children'], $li);
                }  
            }
        }


        protected function get_prd_cats(){
            $args = array(
              'taxonomy'     => 'product_cat',
              'orderby'      => 'id',
              'show_count'   => 0,
              'pad_counts'   => 0,
              'hierarchical' => 1,
              'title_li'     => '',
              'hide_empty'   => 0
            );

           return  get_categories( $args );
        }
    
        public function footer_links(){
            $links = array();

            $slugs = array(
                'metodos-de-pagamento',
                'entregas',
                'devolucoes',
                'sobre-nos',
            );


            foreach ($slugs as $key => $value) {
                
                $page = get_page(Helper::get_id_by_slug($value , 'page'));
                
                $links[$key]['link'] = get_permalink( $page->ID) ;
                $links[$key]['title'] = strtoupper( $page->post_title);
            }


            $http = 'http' . (isset($_SERVER['HTTPS']) ? 's://' : '://');
            $uri  =  $http.$_SERVER['HTTP_HOST'];
            $links[4]['link']  =  (ICL_LANGUAGE_CODE == en ) ? $uri .'/en/faqs/' : $uri .'/faqs/';
            $links[4]['title'] =  'FAQs';            

            return $links;
        }

        public function footer_links_last(){
            $links = array();

            $slugs = array(
                'termos-e-condicoes',
                'politica-de-privacidade',
            );


            foreach ($slugs as $key => $value) {
                
                $page = get_page(Helper::get_id_by_slug($value , 'page'));
                
                $links[$key]['link'] = get_permalink( $page->ID) ;
                $links[$key]['title'] = strtoupper( $page->post_title);
            }           

            return $links;
        }


        public function account_title(){
            $id   = get_option('woocommerce_myaccount_page_id') ;
            $page = get_page( icl_object_id( $id, 'page', true)); 

            return  strtoupper($page->post_title);
        }

        public function set_woo_before_main_content(){
           echo $this->view->render('woocommerce/before');
        }

        public function set_woo_after_main_content(){
            echo $this->view->render('woocommerce/after');
        }
        
        public function woo_addcart(){
            return  $this->view->render('woocommerce/addcart');
        }
    }
?>