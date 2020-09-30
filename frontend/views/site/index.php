<?php

use abdualiym\slider\entities\Slides;
use backend\models\Categories;
use diamondservice\helpers\LanguageHelper;

/**
 * @var $categories Categories
 * @var $homeslider Slides
 * @var $homeabout Slides
 */
foreach ($homeabout as $ha): endforeach;

?>

<div class="slider">
    <div class="slider_list">
        <?php foreach ($homeslider as $hs):?>
        <div class="slider_item">
            <div class="container">
                <div class="slider_item-caption">
                    <h1><?= \abdualiym\language\Language::get($hs,'title')?></h1>
                    <p><?= \abdualiym\language\Language::get($hs,'content')?></p>
                </div>
                <div class="slider_item-img" style="background-image: url(<?= $hs->getThumbFileUrl('photo_0') ?>);"></div>
            </div>
        </div>
        <?php endforeach;?>
    </div>
</div>
<div class="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 about_pos">
                <div class="about_bg" style="background-image: url(<?= $ha->getThumbFileUrl('photo_0') ?>);"></div>
            </div>
            <div class="col-lg-7">
                <div class="about_title btitle">
                    <?= \abdualiym\language\Language::get($ha, 'title'); ?>
                </div>
                <div class="about_text">
                    <p style="font-size: 18px;"> <?= \abdualiym\language\Language::get($ha, 'content'); ?></p>
                  </div>
            </div>
        </div>
    </div>
</div>
<div class="service">
    <div class="container">
        <div class="btitle text-center"> <?= Yii::t('app', 'Our services') ?></div>
        <p class="text-center" style="font-size: 16px;"> <?= Yii::t('app', 'Продлите жизнь своей оргтехнике и избавьтесь от неожиданных поломок и сбоев раз и навсегда. Наше качественное обслуживание обеспечит безукоризненную работу офисного оборудования. При заключении долгосрочных договоров своми силами заберём вашу технику на ремонт') ?></p>
    </div>
    <div class="service_list">
        <div class="container">
            <div class="row">
          <?php foreach ($categories as $c):?>
                <div class="col-lg-4">
                    <a href="#" class="service_item">
                        <div class="service_bg" style="background-image: url(<?= $c->getImageFileUrl('photo') ?>);"></div>
                        <div class="service_title">     <?= LanguageHelper::get($c, 'title'); ?></div>
                    </a>
                </div>
          <?php endforeach;?>
            </div>
        </div>
    </div>
</div>