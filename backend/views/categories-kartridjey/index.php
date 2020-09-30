<?php

use backend\models\CategoriesKartridjey;
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\CategoriesKartridjeySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Categories Kartridjeys');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="categories-kartridjey-index">


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
                'attribute' => 'photo',
                'value' => function (CategoriesKartridjey $model) {
                    return Html::a(Html::img($model->getThumbFileUrl('photo', 's32')), ['categories-kartridjey/view', 'id' => $model->id]);
                },
                'format' => 'raw',
            ],
            [
                'attribute' => 'title_ru',
                'value' => function (CategoriesKartridjey $model) {
                    return Html::a($model->title_ru, ['categories-kartridjey/view', 'id' => $model->id]);
                },
                'format' => 'raw',
            ],
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
        </div>
    </div>

</div>
