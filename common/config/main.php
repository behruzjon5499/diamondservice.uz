<?php

use abdualiym\cms\Module;

$params = array_merge(
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);
return [
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
        '@frontendHostInfo' => $params['frontendHostInfo'],
        '@backendHostInfo' => $params['backendHostInfo'],
        '@storageRoot' => $params['storagePath'],
        '@storageHostInfo' => $params['storageHostInfo'],
    ],
    'timezone' => 'Asia/Tashkent',
    'language' => 'ru',
    'sourceLanguage' => 'en',
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'reCaptcha' => [
            'class' => 'himiklab\yii2\recaptcha\ReCaptchaConfig',
            'siteKeyV2' => '6LfoXt8UAAAAACVqRb7IXkfWiVny-GLQpDUNyZH2',
            'secretV2' => '6LfoXt8UAAAAAOffWlcwrTjBZVbDYUxetdQX4hP_',
            'siteKeyV3' => 'your siteKey v3',
            'secretV3' => 'your secret key v3',
        ],

        'i18n' => [
            'translations' => [
                'app*' => [
                    'class' => 'yii\i18n\PhpMessageSource',
                    'basePath' => '@common/messages',
                    'fileMap' => [
                        'app' => 'app.php',
                        'app/error' => 'error.php',
                    ],
                ],
            ],
        ],
    ],

    'modules' => [
        'cms' => [
            'class' =>'abdualiym\cms\Module',
            'storageRoot' => '@storageRoot',
            'storageHost' => '@storageHostInfo',
            'thumbs' => [ // 'sm' and 'md' keys are reserved
                'admin' => ['width' => 128, 'height' => 128],
                'thumb' => ['width' => 320, 'height' => 320],
            ],
            'languages' => [
                'ru' => [
                    'id' => 0,
                    'name' => 'Русский',
                ],
                'uz' => [
                    'id' => 1,
                    'name' => 'O`zbek tili',
                ],
                'en' => [
                    'id' => 2,
                    'name' => 'English',
                ],
            ],
        ],
        'slider' => [
            'class' =>'abdualiym\slider\Module',
            'storageRoot' => '@storageRoot',
            'storageHost' => '@storageHostInfo',
            'thumbs' => [ // 'sm' and 'md' keys are reserved
                'admin' => ['width' => 128, 'height' => 128],
                'thumb' => ['width' => 320, 'height' => 320],
            ],
            'languages' => [
                'ru' => [
                    'id' => 0,
                    'name' => 'Русский',
                ],
                'uz' => [
                    'id' => 1,
                    'name' => 'O`zbek tili',
                ],
                'en' => [
                    'id' => 2,
                    'name' => 'English',
                ],
            ],
        ],
        'block' => [
            'class' =>'abdualiym\block\Module',
            'storageRoot' => '@storageRoot',
            'storageHost' => '@storageHostInfo',
            'thumbs' => [ // 'sm' and 'md' keys are reserved
                'admin' => ['width' => 128, 'height' => 128],
                'thumb' => ['width' => 320, 'height' => 320],
            ],
            'languages' => [
                'ru' => [
                    'id' => 0,
                    'name' => 'Русский',
                ],
                'uz' => [
                    'id' => 1,
                    'name' => 'O`zbek tili',
                ],
                'en' => [
                    'id' => 2,
                    'name' => 'English',
                ],
            ],
        ],
        'menuActions' => [
            '' => 'Home',
            'news/index' => 'Services',
            'feedback/create' => 'Contacts',
        ]
    ],
];
