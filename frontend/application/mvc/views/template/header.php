<?php echo $head ?>
 <header class="main">
    <div class="container">
            <h1><a href="/">Sometim</a></h1>
            <ul class="menu" id="menu-header">
                <?php  $count = 1 ; foreach ($hedear_data['menu'] as $key => $value) :?>
                <li class="menu"><a href="#<?php echo $key ?>" class="menu <?php echo ($count===1) ? 'selected' : ''; ?>"><?php echo $value ?></a></li>
                <?php  $count = 0 ;endforeach; ?>
            </ul>
            <ul class="lang">
                <li class="lang"><a href="/"    class="lang <?php echo ($uri !== 'en')  ? 'selected': ''?> ">PT</a></li>
                <li class="lang"><a href="/en/" class="lang <?php echo ($uri === 'en')  ? 'selected': ''?>">EN</a></li>
            </ul> 
            <button type="button" class="navbar-toggle collapsed showmobile" id="menumobile">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
    </div>
</header>

