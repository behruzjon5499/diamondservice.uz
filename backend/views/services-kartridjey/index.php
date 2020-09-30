<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\ServicesKartridjeySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Services Kartridjeys');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="services-kartridjey-index">


    <p>
        <?= Html::a(Yii::t('app', 'Create'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    <div class="box">
        <div class="body-box">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            [
                'attribute' => 'title_ru',
                'value' => function (\backend\models\ServicesKartridjey $model) {
                    return Html::a($model->title_ru, ['service-kartridjey/view', 'id' => $model->id]);
                },
                'format' => 'raw',
            ],
            'price',
            'category_kartridjey_id',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
