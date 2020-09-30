<?php

namespace frontend\controllers;

use abdualiym\slider\entities\Slides;
use backend\models\Categories;
use backend\models\Services;
use yii\filters\VerbFilter;
use yii\web\Controller;

/**
 * CategoriesController implements the CRUD actions for Categories model.
 */
class CategoriesController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    public function actionIndex()
    {

        return $this->render('index', [
            'categories' => Categories::find()->all(),
            'services' => Services::find()->all(),
            'slider' => Slides::getBySlug('services'),

        ]);
    }


}
