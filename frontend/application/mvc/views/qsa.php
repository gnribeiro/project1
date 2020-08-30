<section id="qsas"  class="cbp-so-section parallax" data-page-section="true" data-speed="8"  >
    <div class="container">
          <?php if(count($data)): ?>
        <ul>

            <?php foreach ($data as $value) :?>
            <li>
                <h1><?php echo $value->post_title; ?></h1>
                <div class="desc"><?php echo $value->post_content; ?></div>
            </li>
            <?php  endforeach; ?>

        </ul>
        <?php endif; ?>
     <?php if(count($intro_pdf)): foreach ($intro_pdf as $value) :?>
              <p class="hidemobile"><?php echo $value->post_title; ?></p>
            <?php endforeach; endif ?>
      
      
       <?php if (count($pdfs)):  ?>
        <div class="clearfix hidemobile">   
            <?php foreach ($pdfs as $value): ?>
            <a href="/download.php?file=uploads/<?php echo $value['file'] ?>" class="download"><?php echo $value['title'] ;?> </a>
            <?php  endforeach; ?>
        </div>
        <?php endif; ?>
    </div>
</section>
