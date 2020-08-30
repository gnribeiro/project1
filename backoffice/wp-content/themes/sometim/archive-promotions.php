<?php  get_header(); 

    $cat_prd_hp = $_GET['cat_promo'];
    global $post;


   if($wp->query_vars['category_prd_promo'])
   {
        include VIEWS . 'promotions/list-prd-promotions.php';
   }
   else
   {
        include VIEWS . 'promotions/slideshow-promotion.php';
        include VIEWS . 'promotions/single-promotion.php';
   }

?>




<script >
    var prd_top_parent = "<?php  do_action('get_top_parent_promo_slug' , $cat_prd_hp ) ?>";
</script>

<?php
get_footer(); 

?>
