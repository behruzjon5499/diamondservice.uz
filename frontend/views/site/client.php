<?php

use abdualiym\slider\entities\Slides;
/**
 * @var $ourclients Slides
 * @var $sliderclient Slides

 */
foreach ($sliderclient as $s): endforeach;
?>
<div class="wrapper">
    <div class="container">
        <div class="wrapper_thumb" style="background-image: url(<?= $s->getThumbFileUrl('photo_0') ?>);"></div>
        <h1><?=\abdualiym\language\Language::get($s,'title')?></h1>

        <p><?=\abdualiym\language\Language::get($s,'content')?> </p>
        <div class="clearfix"></div>

        <div class="part_list">
            <?php foreach ($ourclients as $c): ?>
                <img src="<?= $c->getThumbFileUrl('photo_0') ?>" alt="">
            <?php endforeach; ?>
        </div>


    </div>
</div>