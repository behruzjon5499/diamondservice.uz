<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "services_kartridjey".
 *
 * @property int $id
 * @property string $title_ru
 * @property string $title_uz
 * @property string $title_en
 * @property string $price
 * @property int $category_kartridjey_id
 *
 * @property CategoriesKartridjey $categoryKartridjey
 */
class ServicesKartridjey extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'services_kartridjey';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title_ru', 'title_uz', 'title_en', 'price', 'category_kartridjey_id'], 'required'],
            [['category_kartridjey_id'], 'integer'],
            [['title_ru', 'title_uz', 'title_en', 'price'], 'string', 'max' => 255],
            [['category_kartridjey_id'], 'exist', 'skipOnError' => true, 'targetClass' => CategoriesKartridjey::className(), 'targetAttribute' => ['category_kartridjey_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'title_ru' => Yii::t('app', 'Title Ru'),
            'title_uz' => Yii::t('app', 'Title Uz'),
            'title_en' => Yii::t('app', 'Title En'),
            'price' => Yii::t('app', 'Price'),
            'category_kartridjey_id' => Yii::t('app', 'Category Kartridjey ID'),
        ];
    }

    /**
     * Gets query for [[CategoryKartridjey]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getCategoryKartridjey()
    {
        return $this->hasOne(CategoriesKartridjey::className(), ['id' => 'category_kartridjey_id']);
    }
}
