<?php if(count($slides)): ?>
<section class="hp-slideshow home-slide" data-page-section="true">
    <div class="owl-carousel" id="hp-slideshow">
        <?php foreach ($slides as $key => $value): ?>
            <div class="hp-slide">
                <div>
                    <img src="/uploads/<?php echo  $value->image?>" alt="" class="imgs-responsive" />
                     <div class="description">
                        <div class="container">
                            <div class="content">   
                                <h1><?php echo  $value->post_title?></h1>
                                <?php echo  $value->post_content?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach ?>
 
     </div>

    <div class="nav-crtl owl-theme">
        <div class="container">
            <div class="owl-controls">
                <div id="nav-crtl" class="owl-nav"></div> 
                <div id="nav-dot" class="owl-dots "></div>  
            </div>
        </div>  
    </div> 
</section>       
<?php endif; ?>

