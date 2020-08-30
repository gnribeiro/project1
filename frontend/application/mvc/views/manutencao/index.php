<section id="maintenance" class="maintenance cbp-so-section">
     
    <div class="maintenance-txt parallax"  data-speed="4" >       
        <div class="container">
            
            <?php if(count($intro)): foreach ($intro as $value) :?>
            <header>
                <h1><?php echo $value->post_title; ?></h1>
            </header>
            
            <div class="text">
                <?php echo $value->post_content; ?>           
             </div>
            <?php endforeach; endif ?>


            <div class="row" >
                <?php if(count($data)): foreach ($data as $value) :?>
                <article class="col-sm-6" data-slide-btns="true">
                    <div class="icon-maintenance">
                        <div class="icon-bkg-maintenance"></div>
                    </div>
                    <h2> <?php echo $value->post_title; ?></h2>
                    <div class="intro"> <?php echo $value->post_excerpt; ?> </div>
                    <span class="collapse"></span>   
                </article>
                 <?php endforeach; endif ?>
            </div>
        </div>
    </div>

     <?php if(count($data)):  $counter = 1; foreach ($data as $value) :?>
    <div class="sub-content" data-slide-contents="true">
        <div>
            <span class="btnAction closer" data-slide-btns-close="true"></span>  
            
            <div class="desc">
                <div class="text">
                    <h2><?php echo $value->post_title; ?></h2>
                    <div>
                       <?php echo $value->post_content; ?>
                    </div>  
                </div>   
            </div>   

             <?php if(count($slides[$value->id])): ?>
            <div class="hp-slideshow">
                <div class="owl-carousel main-slideshow-maintenance-<?php echo $counter ?>">
                    <?php foreach ($slides[$value->id] as $v) : ?>
                    <div class="hp-slide">
                        <div style="background-image:url(/uploads/<?php echo $v?>)"></div>
                    </div>
                    <?php endforeach;  ?>
                </div>

                <div class="nav-crtl owl-theme">
                    <div class="container">
                        <div class="owl-controls">
                            <div id="nav-crtl-maintenance-<?php echo $counter?>" class="owl-nav"></div> 
                            <div id="nav-dot-maintenance-<?php echo $counter?>" class="owl-dots "></div>  
                        </div>
                    </div>  
                </div> 
            </div>
            <?php endif;?>
        </div>
    </div>
    <?php $counter++;  endforeach; endif; ?>
</section>
