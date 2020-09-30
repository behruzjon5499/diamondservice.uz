<?php

use backend\models\CategoriesKartridjey;
use backend\models\ServicesKartridjey;
use diamondservice\helpers\LanguageHelper;
/**
 * @var $categorieskartridjey CategoriesKartridjey
 * @var $serviceskartridjey ServicesKartridjey
 * @var $sliderkartridjey ServicesKartridjey
 */
foreach ($sliderkartridjey as $s): endforeach;
?>
<div class="wrapper">
    <div class="container">
        <div class="wrapper_thumb" style="background-image: url(<?= $s->getThumbFileUrl('photo_0') ?>);"></div>
        <h1><?= \abdualiym\language\Language::get($s, 'title'); ?></h1>

        <p><?= \abdualiym\language\Language::get($s, 'content'); ?></p>
 <div class="clearfix"></div>

        <div class="ser_list">
            <div class="row">
                <?php foreach($categorieskartridjey as $c ):?>
                <div class="col-lg-6">
                    <div class="ser_item">
                        <b>   <?= LanguageHelper::get($c, 'title'); ?></b>
                        <div class="ser_img" style="background-image: url(<?= $c->getImageFileUrl('photo') ?>);"></div>
                        <div class="ser_text">
                            <ul>
                                <?php foreach($serviceskartridjey as $sc):?>
                                <li>   <?= LanguageHelper::get($sc, 'title'); ?></li>
                              <?php endforeach;?>
                            </ul>
                        </div>
                    </div>
                </div>
                <?php endforeach;?>
            </div>
        </div>


    </div>
</div>