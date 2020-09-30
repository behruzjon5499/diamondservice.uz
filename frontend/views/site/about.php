<?php

/**
 * @var $about About
 */

use backend\models\About;
use diamondservice\helpers\LanguageHelper;

?>

<div class="wrapper">
    <div class="container">
        <div class="wrapper_thumb" style="background-image: url(<?= $about->getImageFileUrl('photo') ?>);"></div>
        <h1><?= Yii::t('app', 'О компании') ?></h1>

        <p>
            <?= LanguageHelper::get($about, 'description'); ?>
        </p>

</div>
</div>