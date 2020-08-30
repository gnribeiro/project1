<?php 



global $wp_query;
$post_id = $wp_query->post->ID;
_pr($post_id);





?>

<?php
// $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
// $loop = new WP_Query( array(
// 'post_type' => 'accessories',
// 'posts_per_page' => 9,
// 'orderby'=> 'menu_order'
// 'paged'=>$paged
// ) ); 

//$query = new WP_Query( 'year=2012&monthnum=12&day=12' );

// $args = array(
// 	'date_query' => array(
// 		array(
// 			'year'  => 2012,
// 			'month' => 12,
// 			'day'   => 12,
// 		),
// 	),
// );
// $query = new WP_Query( $args );
?>
    



