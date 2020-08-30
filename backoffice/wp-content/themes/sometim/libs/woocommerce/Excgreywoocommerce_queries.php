<?php 
    
    Class Excgreywoocommerce_queries{

        public $per_page = 10;

        public function  get_best_sales_prd()
        {

            $this->per_page = ($_GET['prd_display'] && isset($_GET['prd_display']) && is_numeric($_GET['prd_display'])) ? esc_attr($_GET['prd_display']) : $this->per_page ;

            $args = array(
                'post_type'             => 'product',
                'post_status'           => 'publish',
                'ignore_sticky_posts'   => 1,
                'posts_per_page'        => $this->per_page ,
                'meta_key'              => 'total_sales',
                'orderby'               => 'meta_value_num',
                'meta_query'            => array(
                    array(
                        'key'       => '_visibility',
                        'value'     => array( 'catalog', 'visible' ),
                        'compare'   => 'IN'
                    )
                )
            );



            if( $_GET['product_cat'] && isset($_GET['product_cat']) ){

                $args['product_cat'] = esc_attr($_GET['product_cat']);
            }

            if( ( $_GET['min_price'] && isset($_GET['min_price']) ) && ( $_GET['max_price'] && isset($_GET['max_price']) ))
            {
                $max_price = esc_attr($_GET['max_price']);
                $min_price = esc_attr($_GET['min_price']);

                if(is_numeric($max_price) && is_numeric($min_price))
                {
                    $price_query  =     array(
                        'key'       => '_price',
                        'value'     => array(  $min_price , $max_price ),
                        'compare'   => 'BETWEEN',
                        'type'      => 'NUMERIC'
                    );
            
                   array_push($args['meta_query'], $price_query );
                }    
            }
            

            if( $_GET['filter_marca'] && isset($_GET['filter_marca']) && is_numeric($_GET['filter_marca']))
            {  
                 $args['tax_query'] =   array(
                    array(
                        'taxonomy'  => 'pa_marca',
                        'terms'     => array_map( 'sanitize_title', explode( ",", $_GET['filter_marca'] ) ),
                        'field'     => 'term_id',
                        'operator'  => 'IN'
                    )
                );
            }
            
            return new WP_Query(  $args );
        }

        public function  get_last_prds()
        {

            $this->per_page = ($_GET['prd_display'] && isset($_GET['prd_display']) && is_numeric($_GET['prd_display'])) ? esc_attr($_GET['prd_display']) : $this->per_page ;

            $args = array(
                'post_type'             => 'product',
                'post_status'           => 'publish',
                'ignore_sticky_posts'   => 1,
                'posts_per_page'        => $this->per_page ,
                'stock'                 => 1,
                'orderby'               =>'date',
                'order'                  => 'DESC',
                'meta_query'            => array(
                    array(
                        'key'       => '_visibility',
                        'value'     => array( 'catalog', 'visible' ),
                        'compare'   => 'IN'
                    )
                )
            );



            if( $_GET['product_cat'] && isset($_GET['product_cat']) ){

                $args['product_cat'] = esc_attr($_GET['product_cat']);
            }

            if( ( $_GET['min_price'] && isset($_GET['min_price']) ) && ( $_GET['max_price'] && isset($_GET['max_price']) ))
            {
                $max_price = esc_attr($_GET['max_price']);
                $min_price = esc_attr($_GET['min_price']);

                if(is_numeric($max_price) && is_numeric($min_price))
                {
                    $price_query  =     array(
                        'key'       => '_price',
                        'value'     => array(  $min_price , $max_price ),
                        'compare'   => 'BETWEEN',
                        'type'      => 'NUMERIC'
                    );
            
                   array_push($args['meta_query'], $price_query );
                }    
            }
            

            if( $_GET['filter_marca'] && isset($_GET['filter_marca']) && is_numeric($_GET['filter_marca']))
            {  
                 $args['tax_query'] =   array(
                    array(
                        'taxonomy'  => 'pa_marca',
                        'terms'     => array_map( 'sanitize_title', explode( ",", $_GET['filter_marca'] ) ),
                        'field'     => 'term_id',
                        'operator'  => 'IN'
                    )
                );
            }
            
            return new WP_Query(  $args );
        }
    }

?>