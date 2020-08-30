<?php 
    /**
    * 
    */
    class Excgreywoocommerce_filters extends Excgreywoocommerce
    {
        
        public function product_filter($search=false)
        {
            global $_chosen_attributes, $wpdb, $wp;

          
            wp_enqueue_script('jquery-ui-slider');
            if ( get_option( 'permalink_structure' ) == '' )
            {
                $this->view->form_action = remove_query_arg( array( 'page', 'paged' ), add_query_arg( $wp->query_string, '', home_url( $wp->request ) ) );
            }
            else
            {
                $this->view->form_action = preg_replace( '%\/page/[0-9]+%', '', home_url( $wp->request ) )  ;
            }
            
            $this->view->field_ignore = array('submit', 'max_price', 'min_price', 'filter_marca', 'add-to-cart', 'product_cat', 's' );

           
            $this->view->search_finder    = ($search) ? $this->search_finder() : ''  ;    
            $this->view->categorie_finder = $this->categorie_finder();
            $this->view->brand_finder     = $this->brand_finder();
            $this->view->price_slider     = $this->price_slider();
           
            $this->view->priceslideconfig = json_encode( array(
                'currency_symbol'   => get_woocommerce_currency_symbol(),
                'currency_pos'      => get_option( 'woocommerce_currency_pos' ),
                'min_price'         => isset( $_GET['min_price'] ) ? esc_attr( $_GET['min_price'] ) : '',
                'max_price'         => isset( $_GET['max_price'] ) ? esc_attr( $_GET['max_price'] ) : ''
            ) , JSON_FORCE_OBJECT);

    
            return $this->view->render('woocommerce/product-filter/product-filter');

        }


        public function brand_finder2(){
            
           

        $current_term   = is_tax() ? get_queried_object()->term_id : '';
        $current_tax    = is_tax() ? get_queried_object()->taxonomy : '';

        $taxonomy       = wc_attribute_taxonomy_name('marca');;
        $query_type     = 'and';
 

        if ( ! taxonomy_exists( $taxonomy ) )
            return;

        $get_terms_args = array( 'hide_empty' => '1' );

        $orderby = wc_attribute_orderby( $taxonomy );

        switch ( $orderby ) {
            case 'name' :
                $get_terms_args['orderby']    = 'name';
                $get_terms_args['menu_order'] = false;
            break;
            case 'id' :
                $get_terms_args['orderby']    = 'id';
                $get_terms_args['order']      = 'ASC';
                $get_terms_args['menu_order'] = false;
            break;
            case 'menu_order' :
                $get_terms_args['menu_order'] = 'ASC';
            break;
        }

        $terms = get_terms( $taxonomy, $get_terms_args );

        if ( count( $terms ) > 0 ) {

            ob_start();

            $found = false;

            echo $before_widget . $before_title . $title . $after_title;

            // Force found when option is selected - do not force found on taxonomy attributes
            if ( ! is_tax() && is_array( $_chosen_attributes ) && array_key_exists( $taxonomy, $_chosen_attributes ) )
                $found = true;

           

                // skip when viewing the taxonomy
                if ( $current_tax && $taxonomy == $current_tax ) {

                    $found = false;

                } else {

                    $taxonomy_filter = str_replace( 'pa_', '', $taxonomy );

                    $found = false;

                    echo '<select class="dropdown_layered_nav_' . $taxonomy_filter . '">';

                    echo '<option value="">' . sprintf( __( 'Any %s', 'woocommerce' ), wc_attribute_label( $taxonomy ) ) .'</option>';

                    foreach ( $terms as $term ) {

                        // If on a term page, skip that term in widget list
                        if ( $term->term_id == $current_term )
                            continue;

                        // Get count based on current view - uses transients
                        $transient_name = 'wc_ln_count_' . md5( sanitize_key( $taxonomy ) . sanitize_key( $term->term_id ) );

                        if ( false === ( $_products_in_term = get_transient( $transient_name ) ) ) {

                            $_products_in_term = get_objects_in_term( $term->term_id, $taxonomy );

                            set_transient( $transient_name, $_products_in_term, YEAR_IN_SECONDS );
                        }

                        $option_is_set = ( isset( $_chosen_attributes[ $taxonomy ] ) && in_array( $term->term_id, $_chosen_attributes[ $taxonomy ]['terms'] ) );

                        // If this is an AND query, only show options with count > 0
                        if ( $query_type == 'and' ) {

                            $count = sizeof( array_intersect( $_products_in_term, WC()->query->filtered_product_ids ) );

                            if ( $count > 0 )
                                $found = true;

                            if ( $count == 0 && ! $option_is_set )
                                continue;

                        // If this is an OR query, show all options so search can be expanded
                        } else {

                            $count = sizeof( array_intersect( $_products_in_term, WC()->query->unfiltered_product_ids ) );

                            if ( $count > 0 )
                                $found = true;

                        }

                        echo '<option value="' . esc_attr( $term->term_id ) . '" '.selected( isset( $_GET[ 'filter_' . $taxonomy_filter ] ) ? $_GET[ 'filter_' .$taxonomy_filter ] : '' , $term->term_id, false ) . '>' . $term->name . '</option>';
                    }

                    echo '</select>';

                    wc_enqueue_js("

                        jQuery('.dropdown_layered_nav_$taxonomy_filter').change(function(){

                            location.href = '" . esc_url_raw( preg_replace( '%\/page/[0-9]+%', '', add_query_arg('filtering', '1', remove_query_arg( array( 'page', 'filter_' . $taxonomy_filter ) ) ) ) ) . "&filter_$taxonomy_filter=' + jQuery(this).val();

                        });

                    ");

                }
            }

           if ( ! $found )
                ob_end_clean();
            else
                echo ob_get_clean();
        }

        public function brand_finder()
        {
            global $product;

            $attributes = get_terms( 'pa_marca', 'orderby=id&hide_empty=0' );      

            $this->view->brands =   $attributes ;
            $this->view->brands_selected =  ( isset( $_GET['filter_marca'] ) &&  $_GET['filter_marca'] && is_numeric( esc_attr($_GET['filter_marca']) ) ) ?  esc_attr($_GET['filter_marca']) : 0;
          
            return   $this->view->render('woocommerce/product-filter/brands');

        }

        public function search_finder()
        {      
            return   $this->view->render('woocommerce/product-filter/search');
        }


        public function categorie_finder($show_children_only = 0 , $hierarchical= true, $show_count=0){
         

            global $wp_query, $post;

            $dropdown_args = array( 'hide_empty' => false ); 
            $list_args     = array( 'show_count' => $show_count, 'hierarchical' => $hierarchical, 'taxonomy' => 'product_cat', 'hide_empty' => false, 'menu_order'=> 'asc');
            
            $this->current_cat   = false;
            $this->cat_ancestors = array();
            

            if ( !is_tax('product_cat') ) {

                if($_GET['product_cat'] && isset($_GET['product_cat'])){
                    $this->current_cat   = get_term_by('slug' , esc_attr($_GET['product_cat']) , "product_cat");
                    $this->cat_ancestors =  get_ancestors( $this->current_cat->term_id, 'product_cat' );  
                }
                 
            }
            else{
                $this->current_cat   = $wp_query->queried_object;
                $this->cat_ancestors = get_ancestors( $this->current_cat->term_id, 'product_cat' );              
            }
             

            
            
            if ( $show_children_only  && $this->current_cat ) {

                // Top level is needed
                $top_level = get_terms( 
                    'product_cat', 
                    array( 
                        'fields'       => 'ids', 
                        'parent'       => 0, 
                        'hierarchical' => true, 
                        'hide_empty'   => false
                    ) 
                );

                // Direct children are wanted
                $direct_children = get_terms( 
                    'product_cat', 
                    array( 
                        'fields'       => 'ids', 
                        'parent'       => $this->current_cat->term_id, 
                        'hierarchical' => true, 
                        'hide_empty'   => false 
                    ) 
                );
                
                // Gather siblings of ancestors
                $siblings  = array();
                if ( $this->cat_ancestors ) {
                    foreach ( $this->cat_ancestors as $ancestor ) {
                        $ancestor_siblings = get_terms( 
                            'product_cat', 
                            array( 
                                'fields'       => 'ids', 
                                'parent'       => $ancestor, 
                                'hierarchical' => false, 
                                'hide_empty'   => false 
                            )
                        );
                        $siblings = array_merge( $siblings, $ancestor_siblings );
                    }
                }

                if ( $hierarchical ) {
                    $include = array_merge( $top_level, $this->cat_ancestors, $siblings, $direct_children, array( $this->current_cat->term_id ) );
                } else {
                    $include = array_merge( $direct_children );
                }
                
                $dropdown_args['include'] = implode( ',', $include );
                $list_args['include']     = implode( ',', $include );

                if ( empty( $include ) ) {
                    return;
                }
            
            } 
            elseif ( $show_children_only ) {
                $dropdown_args['depth']        = 1;
                $dropdown_args['child_of']     = 0;
                $dropdown_args['hierarchical'] = 1;
                $list_args['depth']            = 1;
                $list_args['child_of']         = 0;
                $list_args['hierarchical']     = 1;
            }



            $dropdown_defaults = array(
                'show_counts'        => $show_count,
                'hierarchical'       => $hierarchical,
                'show_uncategorized' => 0,
                'orderby'            => 'order',
                'selected'           => $this->current_cat ? $this->current_cat->slug : ''
            );

        
            $dropdown_args = wp_parse_args( $dropdown_args, $dropdown_defaults );

             $args = apply_filters( 'woocommerce_product_categories_widget_dropdown_args', $dropdown_args );
            
            $args = $dropdown_args;
            if(!is_array( $args ) )
                return '';

            return $this->dropdown_categories( $args  );
        }


        protected function dropdown_categories($args ){
            global $wp_query;

 
            $current_product_cat = isset( $wp_query->query['product_cat'] ) ? $wp_query->query['product_cat'] : '';

            
            $defaults            = array(
                'pad_counts'         => 1,
                'show_counts'        => 1,
                'hierarchical'       => 1,
                'hide_empty'         => 1,
                'show_uncategorized' => 1,
                'orderby'            => 'name',
                'selected'           => $current_product_cat,
                'menu_order'         => false
            );

            $args = wp_parse_args( $args, $defaults );

            if ( $args['orderby'] == 'order' ) {
                $args['menu_order'] = 'asc';
                $args['orderby']    = 'name';
            }

            $terms = get_terms( 'product_cat', apply_filters( 'wc_product_dropdown_categories_get_terms_args', $args ) );

            if ( ! $terms ) {
                return;
            }


            $output  = "<select name='product_cat' class='dropdown_product_cat_filter'>";
            $output .= '<option value="" ' .  selected( $current_product_cat, '', false ) . '>' . __( 'Select a category', 'letsgetiton' ) . '</option>';
            $output .= $this->wc_walk_category_dropdown_tree( $terms, 0, $args );
            if ( $args['show_uncategorized'] ) {
                $output .= '<option value="0" ' . selected( $current_product_cat, '0', false ) . '>' . __( 'Uncategorized', 'letsgetiton' ) . '</option>';
            }
            $output .= "</select>";

            return $output;
        }


        function wc_walk_category_dropdown_tree() {
          
            $args = func_get_args();

            if ( empty( $args[2]['walker']) || !is_a($args[2]['walker'], 'Walker' ) ) {
                $walker = new Excgreydropdownwalker();
            } else {

                $walker = $args[2]['walker'];
            }

            return call_user_func_array( array( &$walker, 'walk' ), $args );
        }

        public function price_slider(){
            $min       = 0;
            $max       = 0;
            $min_price = isset( $_GET['min_price'] ) ? esc_attr( $_GET['min_price'] ) : '';
            $max_price = isset( $_GET['max_price'] ) ? esc_attr( $_GET['max_price'] ) : '';
        
            $prices = $this->get_max_min_price();
            $min    = $prices['min'];
            $max    = $prices['max'];
            

            if ( $min == $max )
                return;

            $this->view->min_price = esc_attr( $min_price );
            $this->view->max_price = esc_attr( $max_price );
            $this->view->min       = esc_attr( apply_filters( 'woocommerce_price_filter_widget_amount', $min ) );
            $this->view->max       = esc_attr( apply_filters( 'woocommerce_price_filter_widget_amount', $max ) );

           
            return  $this->view->render('woocommerce/product-filter/price_search');

           
        }

    }
?>