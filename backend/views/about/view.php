<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\About */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Abouts'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="about-view">


    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>
<div class="row">
    <div class="col-md">
        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                'id',
                'phone',
                'address',
                'email:email',
                'hours',
            ],
        ]) ?>

    </div>
    <div class="col-md-6">
        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                [
                    'attribute' => 'photo',
                    'value' => function (\backend\models\About $model) {
                        return Html::a(Html::img($model->getThumbFileUrl('photo', 's128')));
                    },
                    'format' => 'raw',
                ],
            ],
        ]) ?>

    </div>
</div>
    <div class="row">
        <?php $description_ru = DetailView::widget([
            'model' => $model,
            'attributes' => [
                [
                    'attribute' => 'description_ru',
                    'format' => 'raw',
                    'label' => false
                ]
            ]
        ]) ?>
        <?php $description_uz = DetailView::widget([
            'model' => $model,
            'attributes' => [
                [
                    'attribute' => 'description_uz',
                    'format' => 'raw',
                    'label' => false
                ]
            ]
        ]) ?>

        <?php $description_en = DetailView::widget([
            'model' => $model,
            'attributes' => [
                [
                    'attribute' => 'description_en',
                    'format' => 'raw',
                    'label' => false
                ]
            ]
        ]) ?>

        <?= \yii\bootstrap\Tabs::widget([
            'items' => [
                [
                    'label' => Yii::t('app', 'Description Ru'),
                    'content' => $description_ru,
                    'active' => true
                ],
                [
                    'label' => Yii::t('app', 'Description Uz'),
                    'content' => $description_uz,
                ],
                [
                    'label' => Yii::t('app', 'Description En'),
                    'content' => $description_en,
                ],
            ]
        ]) ?>

    </div>

</div>
