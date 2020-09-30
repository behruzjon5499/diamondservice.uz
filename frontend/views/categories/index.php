<?php

use abdualiym\slider\entities\Slides;
use backend\models\Categories;
use backend\models\Services;
use diamondservice\helpers\LanguageHelper;
/**
 * @var $categories Categories
 * @var $services Services
 *  @var $slider Slides

 */
foreach ($slider as $s): endforeach;

?>

<div class="wrapper">
    <div class="container">
        <div class="wrapper_thumb" style="background-image: url(<?= $s->getThumbFileUrl('photo_0') ?>);"></div>
        <h1><?= \abdualiym\language\Language::get($s, 'title'); ?></h1>

        <p><?= \abdualiym\language\Language::get($s, 'content'); ?></p>
      <div class="clearfix"></div>

        <div class="ser_list">
            <div class="row">
           <?php foreach($categories as $c):?>

                <div class="col-lg-6">
                    <div class="ser_item">
                        <b>   <?= LanguageHelper::get($c, 'title'); ?></b>
                        <div class="ser_img" style="background-image: url(<?= $c->getImageFileUrl('photo') ?>);"></div>
                        <div class="ser_text">
                            <ul>
                                <?php foreach($services as $s):?>
                                <?php if($s['category_id'] == $c->id){?>
                                <li><?= LanguageHelper::get($s, 'title'); ?></li>
                                    <?php } endforeach;?>
                            </ul>
                        </div>
                    </div>
                </div>
           <?php endforeach;?>
            </div>
        </div>


    </div>
</div>