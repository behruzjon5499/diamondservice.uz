<?php

use backend\models\News;
use diamondservice\helpers\LanguageHelper;
/**
 * @var $news News
 * @var $topnews News
 */

?>
<div class="wrapper">
    <div class="container">
        <div class="wrapper_thumb" style="background-image: url(<?= $news->getImageFileUrl('photo') ?>);"></div>
        <h1 class="little"><?= LanguageHelper::get($news, 'title') ?>  </h1>
        <ul class="breadcrumbs">
            <li><a href="#"><?= Yii::t('app', 'News') ?></a></li>
            <li><?= LanguageHelper::get($news, 'title') ?> </li>
        </ul>
        <p><?= LanguageHelper::get($news, 'description') ?></p>
        <div class="clearfix"></div>

        <hr>
        <h5><?= Yii::t('app', 'Other News') ?></h5>
        <div class="row">
            <?php foreach($topnews as $topnew):?>
            <div class="col-lg-4">
                <a href="<?= \yii\helpers\Url::to(['news/view', 'id' => $topnew->id]) ?>" class="news_item" style="background-image: url(<?= $topnew->getImageFileUrl('photo') ?>);">
                    <div class="news_cap">
                        <?= LanguageHelper::get($topnew, 'title') ?>
                        <div class="news_date"><i class="fa fa-calendar"></i>  <?php echo date('F d, Y', $topnew->date) ?></div>
                    </div>
                </a>
            </div>
          <?php endforeach;?>
        </div>

    </div>
</div>