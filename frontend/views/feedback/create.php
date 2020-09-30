<?php

/**
 * @var Feedback Feedback
 */

use backend\models\Feedback;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

?>
<?php if (Yii::$app->session->hasFlash('success')): ?>
    <div class="alert alert-success">
        <?= Yii::$app->session->getFlash('success') ?>
    </div>
<?php endif; ?>
<div class="wrapper contact_page">
    <div class="container">
        <div class="wrapper_form">
            <div class="form_title"><?= Yii::t('app', 'Contacts') ?></div>

            <?php $form = ActiveForm::begin([
                'id' => 'feedback-form',
//                            'options' => ['class' => 'form-horizontal'],
            ]); ?>

            <?= $form->field($model, 'full_name')->textInput(['maxlength' => 255, 'class' => '', 'placeholder' => "Full Name"])->label(false); ?>

            <?= $form->field($model, 'phone')->textInput(['maxlength' => 255, 'class' => '','placeholder' => "Phone"])->label(false); ?>

            <?= $form->field($model, 'theme')->textInput(['maxlength' => 255,  'class' => '','placeholder' => "Theme"])->label(false); ?>

            <?= $form->field($model, 'email')->textInput(['maxlength' => 255,  'class' => '','placeholder' => "Email"])->label(false); ?>

            <?= $form->field($model, 'comment')->textInput(['maxlength' => 255,  'class' => '','placeholder' => "Comment"])->label(false); ?>

            <div class="form-group">
                <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => '' ,'type' => 'submit']) ?>
            </div>

            <?php ActiveForm::end(); ?>

        </div>
        <h1><?= Yii::t('app', 'Feedback') ?></h1>
        <div class="contact_info">
            <p><?= Yii::t('app', 'Address') ?> <b><?=$about->address?></b></p>
            <p><?= Yii::t('app', 'Phone') ?> <b><?=$about->phone?></b></p>
            <p><?= Yii::t('app', 'Email') ?> <b><?=$about->email?></b></p>
        </div>

        <div class="clearfix"></div>
    </div>
    <div class="contact_map">

    </div>
</div>