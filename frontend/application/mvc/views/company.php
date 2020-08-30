
<section id="company" class="cbp-so-section" data-page-section="true">
    <div class="container">
		<div class="row">
            <?php if(count($company)): ?>
            <?php foreach ($company as $value) : ?>
                <article class="col-sm-4">
                    <header class="company"><h1><?php echo $value->post_title; ?></h1></header>
                    <div class="intro"><?php echo $value->post_content; ?></div>
                    <div class="content-effect content-collapse"><?php echo $value->post_excerpt; ?></div>
                    <span class="collapse"></span>
                </article>
            <?php endforeach; ?>
            <?php endif; ?>
        </div>
   	</div>
</section>

