<?php

namespace frontend\controllers;

use abdualiym\slider\entities\Slides;
use backend\models\CategoriesKartridjey;
use backend\models\ServicesKartridjey;
use yii\filters\VerbFilter;
use yii\web\Controller;

/**
 * CategoriesKartridjeyController implements the CRUD actions for CategoriesKartridjey model.
 */
class CategoriesKartridjeyController extends Controller
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

    /**
     * Lists all CategoriesKartridjey models.
     * @return mixed
     */
    public function actionIndex()
    {

        return $this->render('index', [
            'categorieskartridjey' => CategoriesKartridjey::find()->all(),
            'serviceskartridjey' => ServicesKartridjey::find()->all(),
            'sliderkartridjey' => Slides::getBySlug('serviceskartridjey'),
        ]);
    }

}
