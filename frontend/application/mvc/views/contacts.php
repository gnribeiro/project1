<div id="contacts" data-page-section="true" class="cbp-so-section">
    <div id="maps"></div>
    <section class="contacts">
        <div class="container">
            <article>
                <?php if(count($intro)): foreach ($intro as $value) :?>
                <header>
                    <h1><?php echo $value->post_title; ?></h1>
                </header>
                
                <div class="text">
                    <?php echo $value->post_content; ?>           
                 </div>
                <?php endforeach; endif ?>

                <div class="hide" id="contact-sucess-msg"> <?php echo $message[$language] ?></div>
                <form action="" id="contacts-form">

                    <div>
                        <input type="text" name="name" placeholder="<?php echo $labels[$language]['name'] ?>" />
                        <span class="error"></span>
                    </div>
                    <div>
                        <input type="text" name="email" placeholder="<?php echo $labels[$language]['email'] ?>">
                        <span class="error"></span>
                    </div>
                    <div>
                        <textarea name="msg" placeholder="<?php echo $labels[$language]['message'] ?>"></textarea>
                        <span class="error"></span>
                    </div>
                    <input type="hidden" name="lang" value="<?php echo $language ?>"/>
                    <input type="submit" value="<?php echo $labels[$language]['send'] ?>"/>
                    
                </form>
                <div class="loading">
                    <div id="circularG">
                        <div id="circularG_1" class="circularG">
                        </div>
                        <div id="circularG_2" class="circularG">
                        </div>
                        <div id="circularG_3" class="circularG">
                        </div>
                        <div id="circularG_4" class="circularG">
                        </div>
                        <div id="circularG_5" class="circularG">
                        </div>
                        <div id="circularG_6" class="circularG">
                        </div>
                        <div id="circularG_7" class="circularG">
                        </div>
                        <div id="circularG_8" class="circularG">
                        </div>
                    </div> 
                </div>
            </article>
         
             <div class="clearfix">
                <span class="btntop"> <?php echo  $btntop[$language] ?> </span>
            </div>

            <footer>
           

                <?php echo  $copyrights[$language] ?>
            </footer>
        </div>
    </section>
</div>