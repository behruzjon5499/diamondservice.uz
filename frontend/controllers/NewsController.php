<?php

namespace frontend\controllers;

use backend\models\News;
use yii\filters\VerbFilter;
use yii\web\Controller;

/**
 * NewsController implements the CRUD actions for News model.
 */
class NewsController extends Controller
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
            'news' => News::find()->all(),
        ]);
    }

    public function actionView($id)
    {
        return $this->render('view', [
            'topnews' => News::find()->orderBy(['date' => SORT_DESC])->limit(3)->all(),
            'news' => News::find()->where(['id' => $id])->one(),
        ]);
    }


}
