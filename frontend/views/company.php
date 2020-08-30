<section id="company" class="cbp-so-section" data-page-section="true">
    <div class="container">
		<div class="row">
            <?php foreach ($data['company'] as $value) { ?>
            
            <article class="col-sm-4">
                <header class="company"><h1><?php echo $value['title']?></h1></header>
                <div class="intro"><?php echo $value['intro']?></div>
                <div class="content-effect content-collapse"><?php echo $value['content']?></div>
                <span class="collapse"></span>
            </article>
            <?php } ?>
        </div>
   	</div>
</section>
