<?php

use abdualiym\slider\entities\Slides;
use backend\models\Services;
use backend\models\ServicesKartridjey;
use diamondservice\helpers\LanguageHelper;
/**
 * @var $services Services
 * @var $serviceskartridjey ServicesKartridjey
 * @var $sliderprice Slides
 */
foreach ($sliderprice as $s): endforeach;
?>
<div class="wrapper">
    <div class="container">
        <div class="wrapper_thumb" style="background-image: url(<?= $s->getThumbFileUrl('photo_0') ?>);"></div>
        <h1><?=\abdualiym\language\Language::get($s,'title')?></h1>

        <h3 style="font-size: 30px;"> <?= Yii::t('app', 'Список услуг remont') ?> </h3>
        <ul>
            <?php foreach($services as $service):?>
            <li><?= LanguageHelper::get($service, 'title'); ?></li>
      <?php endforeach;?>
        </ul>
        <h3 style="font-size: 30px;"> <?= Yii::t('app', 'Список услуг kartridjey') ?></h3>
        <ul>
            <?php foreach($serviceskartridjey as $sk):?>
                <li><?= LanguageHelper::get($sk, 'title'); ?></li>
            <?php endforeach;?>

        </ul>
        <div class="clearfix"></div>

        <h4 class="text-center"><?= Yii::t('app', 'Программное обеспечение') ?></h4>
        <table class="table">
            <thead>
            <tr>
                <th><?= Yii::t('app', 'Наименование услуги') ?></th>
                <th><?= Yii::t('app', 'Price') ?></th>
            </tr>
            </thead>
            <tbody>
            <?php foreach($services as $s):?>
            <tr>
                <td>  <?= LanguageHelper::get($s, 'title'); ?></td>
                <td><?=$s->price?></td>
            </tr>
      <?php endforeach;?>
            </tbody>
        </table>


        <h4 class="text-center"><?= Yii::t('app', 'Программное обеспечение') ?></h4>
        <table class="table">
            <thead>
            <tr>
                <th><?= Yii::t('app', 'Наименование услуги') ?></th>
                <th><?= Yii::t('app', 'Price') ?></th>
            </tr>
            </thead>
            <tbody>
            <?php foreach($serviceskartridjey as $sk):?>
                <tr>
                    <td>  <?= LanguageHelper::get($sk, 'title'); ?></td>
                    <td><?=$sk->price?></td>
                </tr>
            <?php endforeach;?>
            </tbody>
        </table>

    </div>
</div>