<?php
use backend\models\News;
use diamondservice\helpers\LanguageHelper;
/**
 * @var $news News

 */

?>
<div class="wrapper">
    <div class="container">
        <h1><a href="#"><?= Yii::t('app', 'News') ?></h1>

        <div class="row">
            <?php

            foreach ($news as $n):?>
                <div class="col-lg-4">
                    <a href="<?= \yii\helpers\Url::to(['news/view', 'id' => $n->id]) ?>" class="news_item"
                       style="background-image: url(<?= $n->getImageFileUrl('photo') ?>);">
                        <div class="news_cap">
                            <?= LanguageHelper::get($n, 'title'); ?>
                            <div class="news_date"><i class="fa fa-calendar"></i> <?php echo date('F d, Y', $n->date) ?>
                            </div>
                        </div>
                    </a>
                </div>
            <?php endforeach; ?>
        </div>


    </div>
</div>