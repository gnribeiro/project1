<section id="clients" data-page-section="true" class="cbp-so-section">
    <div class="container">
     <?php if(count($intro)): foreach ($intro as $value) :?>
        <header>
            <h1><?php echo $value->post_title; ?></h1>
        </header>
        
        <div class="text">
            <?php echo $value->post_content; ?>           
         </div>
        <?php endforeach; endif ?>
        
        <?php if(count($data)): ?>
        <div class="logs">
            <div class="clients-logs owl-carousel">
                <?php foreach ($data as  $value): ?>
                    <div class="hp-slide">
                        <img src="/uploads/<?php echo  $value->image?>" alt="<?php echo  $value->post_title?>">
                    </div>
                <?php endforeach ?>    
            </div>
           
            <div class="nav-crtl owl-theme">
                <div class="">
                    <div class="owl-controls">
                        <div id="nav-crtl-logs" class="owl-nav"></div>  
                    </div>
                </div>  
            </div> 
        </div>
         <?php endif; ?>
    </div>
</section>