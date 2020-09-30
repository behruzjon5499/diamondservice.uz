<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\CategoriesKartridjey */

$this->title = Yii::t('app', 'Create Categories Kartridjey');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Categories Kartridjeys'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="categories-kartridjey-create">


    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
