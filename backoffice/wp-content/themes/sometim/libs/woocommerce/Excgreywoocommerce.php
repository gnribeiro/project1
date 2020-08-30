<?php 

    require_once LIBS . "woocommerce/Excgreydropdownwalker.php";

    /**
    * 
    */
    class Excgreywoocommerce
    {
        protected $view;
        protected $current_cat;
        protected $cat_ancestors;

        public function __construct()
        {
            $this->view = View::factory();  
        }
    

        
        public function get_max_min_price()
        {
            global  $wpdb, $woocommerce;
            $price = array();

            if ( sizeof( $woocommerce->query->layered_nav_product_ids ) === 0 ) 
            {
                $price['min'] = floor( $wpdb->get_var(
                    $wpdb->prepare('
                        SELECT min(meta_value + 0)
                        FROM %1$s
                        LEFT JOIN %2$s ON %1$s.ID = %2$s.post_id
                        WHERE ( meta_key = \'%3$s\' OR meta_key = \'%4$s\' ) 
                        AND meta_value != ""
                    ', $wpdb->posts, $wpdb->postmeta, '_price', '_min_variation_price' )
                ) );
                $price['max'] = ceil( $wpdb->get_var(
                    $wpdb->prepare('
                        SELECT max(meta_value + 0)
                        FROM %1$s
                        LEFT JOIN %2$s ON %1$s.ID = %2$s.post_id
                        WHERE meta_key = \'%3$s\'
                    ', $wpdb->posts, $wpdb->postmeta, '_price' )
                ) );
            } 
            else 
            {
                $price['min']= floor( $wpdb->get_var(
                    $wpdb->prepare('
                        SELECT min(meta_value + 0)
                        FROM %1$s
                        LEFT JOIN %2$s ON %1$s.ID = %2$s.post_id
                        WHERE ( meta_key =\'%3$s\' OR meta_key =\'%4$s\' ) 
                        AND meta_value != ""
                        AND (
                            %1$s.ID IN (' . implode( ',', array_map( 'absint', $woocommerce->query->layered_nav_product_ids ) ) . ')
                            OR (
                                %1$s.post_parent IN (' . implode( ',', array_map( 'absint', $woocommerce->query->layered_nav_product_ids ) ) . ')
                                AND %1$s.post_parent != 0
                            )
                        )
                    ', $wpdb->posts, $wpdb->postmeta, '_price', '_min_variation_price'
                ) ) );
                $price['max']= ceil( $wpdb->get_var(
                    $wpdb->prepare('
                        SELECT max(meta_value + 0)
                        FROM %1$s
                        LEFT JOIN %2$s ON %1$s.ID = %2$s.post_id
                        WHERE meta_key =\'%3$s\'
                        AND (
                            %1$s.ID IN (' . implode( ',', array_map( 'absint', $woocommerce->query->layered_nav_product_ids ) ) . ')
                            OR (
                                %1$s.post_parent IN (' . implode( ',', array_map( 'absint', $woocommerce->query->layered_nav_product_ids ) ) . ')
                                AND %1$s.post_parent != 0
                            )
                        )
                    ', $wpdb->posts, $wpdb->postmeta, '_price'
                ) ) );
            }

            return  $price ;
        }


    }
 ?>