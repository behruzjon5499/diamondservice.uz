<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        '/css/bootstrap.min.css',
        '/css/bootstrap-grid.min.css',
        '/css/font-awesome.min.css',
        '/css/magnific-popup.css',
        '/css/mixins.css',
        '/css/slick.css',
        '/css/style.css',
        '/css/media.css',
    ];
    public $less = [
        '/css/media.less',
        '/css/mixins.less',
        '/css/style.less',
    ];
    public $js = [
        '/js/jquery.min.js',
        '/js/bootstrap.min.js',
        '/js/slick.min.js',
        '/js/jquery.magnific-popup.min.js',
        '/js/main.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapPluginAsset',
    ];
}
