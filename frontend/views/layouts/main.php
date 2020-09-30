<?php

/* @var $this View */

/* @var $content string */

use backend\models\About;
use backend\models\Feedback;
use frontend\assets\AppAsset;
use yii\helpers\Html;
use yii\web\View;
use yii\widgets\ActiveForm;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <meta name="description" content="">

    <!-- responsive tag -->
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon -->

    <link rel="apple-touch-icon" href="/images/logo.png">
    <link rel="shortcut icon" type="image/x-icon" href="/images/logo.png">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <?php $this->head() ?>
</head>
<body class="defult-home">
<?php $this->beginBody() ?>
<!--Header Start-->
<?php
$model = new Feedback();
$about = About::find()->one();
$adviceslider = \abdualiym\slider\entities\Slides::getBySlug('adviceslider');

?>
<header>
    <div class="container">
        <div class="head_item">
            <i class="fa fa-phone"></i>
            <a href="tel: <?=$about->phone?>"> <?=$about->phone?></a>
        </div>
        <div class="head_item">
            <i class="fa fa-envelope"></i>  <?=$about->email?>
        </div>
        <div class="head_item">
            <i class="fa fa-map-marker"></i>  <?=$about->address?>
        </div>
        <div class="head_item">
            <i class="fa fa-clock-o"></i>  <?=$about->hours?>
        </div>
        <button class="callme" data-toggle="modal" data-target="#exampleModal">Заказать звонок</button>
    </div>
</header>
<nav class="navbar">
    <div class="container">
        <div class="navbar_box">
            <a class="logo" href="<?= \yii\helpers\Url::to(['site/index']) ?>"><img src="/images/logo.png" style="width: 100px; height: 40px;" alt=""></a>
            <ul class="menu">
                <li><a href="<?= \yii\helpers\Url::to(['site/about']) ?>"><?= Yii::t('app', 'Company') ?></a></li>
                <li><a href="<?= \yii\helpers\Url::to(['categories/index']) ?>"><?= Yii::t('app', 'Услуги по ремонту') ?></a></li>
                <li><a href="<?= \yii\helpers\Url::to(['categories-kartridjey/index']) ?>"><?= Yii::t('app', 'Услуги по картриджей') ?></a></li>
                <li><a href="<?= \yii\helpers\Url::to(['site/pricelist']) ?>"><?= Yii::t('app', 'Price list') ?></a></li>
                <li><a href="<?= \yii\helpers\Url::to(['site/client']) ?>"><?= Yii::t('app', 'Our Client') ?></a></li>
                <li><a href="<?= \yii\helpers\Url::to(['news/index']) ?>"><?= Yii::t('app', 'News') ?></a></li>
                <li><a href="<?= \yii\helpers\Url::to(['feedback/create']) ?>"><?= Yii::t('app', 'Contacts') ?></a></li>
            </ul>
            <button class="open_menu"><i class="fa fa-bars"></i></button>
        </div>

    </div>
</nav>
<!--Header End-->

<!-- Main content Start -->
<div class="main-content">
    <?= $content ?>
</div>
<!-- Main content End -->


<div class="advice">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 advice_box">
                <div class="advice_icon"><img src="/images/advice1.svg" alt=""></div>
                <div class="advice_title">
                    <b>На 100% фиксированные цены</b>
                    <p>Не меняются на ровном месте в процессе ремонта.</p>
                </div>
            </div>
            <div class="col-lg-4 advice_box">
                <div class="advice_icon"><img src="/images/advice2.svg" alt=""></div>
                <div class="advice_title">
                    <b>Выдаем гарантию на все проведенные работы</b>
                    <p>Официальные документы с печатью компании.</p>
                </div>
            </div>
            <div class="col-lg-4 advice_box">
                <div class="advice_icon"><img src="/images/advice3.svg" alt=""></div>
                <div class="advice_title">
                    <b>Бережное отношение к устройствам клиентов</b>
                    <p>Официальные документы с печатью компании.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="bord">
    <div class="container">

        <div class="bord_box">
            <b>Телефон</b>
            <div class="bord_item">
                <i class="fa fa-phone"></i>
                <p>+998 71 <span>123 45 67</span></p>
                <p>+998 71 <span>123 45 67</span></p>
            </div>
            <div class="bord_item little">
                <i class="fa fa-clock-o"></i>
                07:00 - 23:00 Без выходные
            </div>
            <b>адрес</b>
            <div class="bord_item address">
                <i class="fa fa-map-marker"></i>
              <?=$about->address?>
            </div>
        </div>
    </div>
    <div class="feedback">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="feedback_title"><?= Yii::t('app', 'ОСТАВЬТЕ ЗАЯВКУ НА САЙТЕ, И МЫ САМИ С ВАМИ СВЯЖЕМСЯ!') ?></div>
                        <?php $form = ActiveForm::begin([
                            'id' => 'feedback-form',
                            'options' => ['class' => 'form'],
                        ]); ?>

                        <?= $form->field($model, 'full_name')->textInput(['maxlength' => 255, 'class'=>'', 'placeholder' => "Full Name"])->label(false); ?>

                        <?= $form->field($model, 'phone')->textInput(['maxlength' => 255, 'class'=>'' ,'placeholder' => "Phone"])->label(false); ?>

                            <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>

                        <?php ActiveForm::end(); ?>

                    <p style="font-size: 15px;"> <?= Yii::t('app', 'Нажимая кнопку, я принимаю соглашение о конфиденциальности и соглашаюсь с обработкой персональных данных') ?></p>
                </div>
            </div>
        </div>
    </div>
    <div class="map"></div>
</div>
<footer>
    <div class="container">
        <div class="foot_top">
            <div class="logo"><img src="/images/logo.png" style="width: 100px; height: 40px;" alt=""></div>
            <ul class="menu">
                <li><a href="<?= \yii\helpers\Url::to(['site/about']) ?>"><?= Yii::t('app', 'Company') ?></a></li>
                <li><a href="<?= \yii\helpers\Url::to(['categories/index']) ?>"><?= Yii::t('app', 'Услуги по ремонту') ?></a></li>
                <li><a href="<?= \yii\helpers\Url::to(['categories-kartridjey/index']) ?>"><?= Yii::t('app', 'Услуги по картриджей') ?></a></li>
                <li><a href="<?= \yii\helpers\Url::to(['site/pricelist']) ?>"><?= Yii::t('app', 'Price list') ?></a></li>
                <li><a href="<?= \yii\helpers\Url::to(['site/client']) ?>"><?= Yii::t('app', 'Our Client') ?></a></li>
                <li><a href="<?= \yii\helpers\Url::to(['news/index']) ?>"><?= Yii::t('app', 'News') ?></a></li>
                <li><a href="<?= \yii\helpers\Url::to(['feedback/create']) ?>"><?= Yii::t('app', 'Contacts') ?></a></li>
            </ul>

        </div>
        <div class="foot_bottom">
            <div class="copyright">© 2020 Все права защищены</div>
            <div class="author">сайт разработан TUITSoft</div>
        </div>
    </div>
</footer>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
