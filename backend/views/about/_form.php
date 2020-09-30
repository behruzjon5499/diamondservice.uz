<?php

use kartik\file\FileInput;
use mihaildev\ckeditor\CKEditor;
use mihaildev\elfinder\ElFinder;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\About */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="about-form">

    <?php $form = ActiveForm::begin(); ?>

<div class="row">
    <div class="col-md-6">
        <?= $form->field($model, 'phone')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'address')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'hours')->textInput(['maxlength' => true]) ?>
    </div>
<div class="col-md-6">
    <?php
    echo $form->field($model, 'photo')->widget(FileInput::class, [
        'options' => ['accept' => 'image/*'],
        'language' => 'ru',
        'pluginOptions' => [
            'showCaption' => false,
            'showRemove' => false,
            'showUpload' => false,
            'browseClass' => 'btn btn-primary btn-block',
            // 'browseIcon' => ' ',
            'browseLabel' => 'Рисунок',
            'layoutTemplates' => [
                'main1' => '<div class="kv-upload-progress hide"></div>{remove}{cancel}{upload}{browse}{preview}',
            ],
            'initialPreview' => [
                Html::img($model->getThumbFileUrl('photo', 's32'), ['class' => 'file-preview-image', 'alt' => '', 'title' => '']),
            ],
        ],
    ]);
    ?>
</div>
</div>

    <div class="row">


    <div class="col-md-12">
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#ru" aria-controls="ru" role="tab" data-toggle="tab">Русский</a>
            </li>
            <li role="presentation" class=""><a href="#uz" aria-controls="uz" role="tab" data-toggle="tab">Узбекский</a>
            </li>
            <li role="presentation" class=""><a href="#en" aria-controls="en" role="tab" data-toggle="tab">Английский</a>
            </li>
        </ul>


        <div class="tab-content">
            <br>
            <div role="tabpanel" class="tab-pane active" id="ru">
                <?= $form->field($model, 'description_ru')->widget(CKEditor::class, [
                    'editorOptions' => ElFinder::ckeditorOptions('elfinder', [
                        'language' => 'ru',
                    ])
                ])->label('Контент') ?>
            </div>
            <div role="tabpanel" class="tab-pane" id="uz">
                <?= $form->field($model, 'description_uz')->widget(CKEditor::class, [
                    'editorOptions' => ElFinder::ckeditorOptions('elfinder', ['language' => 'uz'])
                ])->label('Контент') ?>
            </div>
            <div role="tabpanel" class="tab-pane" id="en">
                <?= $form->field($model, 'description_en')->widget(CKEditor::class, [
                    'editorOptions' => ElFinder::ckeditorOptions('elfinder', ['language' => 'en'])
                ])->label('Контент') ?>
            </div>
        </div>

    </div>
    </div>
    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
