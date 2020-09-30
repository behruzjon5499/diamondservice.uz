<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\ServicesKartridjey */

$this->title = Yii::t('app', 'Create Services Kartridjey');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Services Kartridjeys'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="services-kartridjey-create">


    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
