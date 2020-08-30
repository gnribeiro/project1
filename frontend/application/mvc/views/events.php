<section id="events" data-page-section="true" class="cbp-so-section">
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

        <div class="hp-slideshow events">
                <div class="owl-carousel main-slideshow-events">
                      <?php foreach ($data as $value) :?>
                      <div class="hp-slide">
                          <div class="img-slide col-sm-4" style="background-image:url('/uploads/<?php echo  $value->image?>');">
                          </div>
                          <div class="desc-slide col-sm-8">
                             <h2> <?php echo $value->post_title; ?></h2>
                              <div>
                                <?php echo $value->post_content; ?>
                              </div>
                         </div> 
                    </div>
                     <?php endforeach ?> 
                </div>

                <div class="nav-crtl owl-theme">
                    <div class="">
                        <div class="owl-controls">
                            <div id="nav-crtl-events" class="owl-nav"></div> 
                         
                        </div>
                    </div>  
                </div> 
            </div>
        </div>
      <?php endif; ?>

    </div>
</section>
