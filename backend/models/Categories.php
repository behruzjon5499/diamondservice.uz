<?php

namespace backend\models;

use Yii;
use yii\behaviors\AttributeBehavior;
use yii\behaviors\TimestampBehavior;
use yii\db\ActiveRecord;
use yii\web\UploadedFile;
use yiidreamteam\upload\ImageUploadBehavior;

/**
 * This is the model class for table "categories".
 *
 * @property int $id
 * @property string $title_ru
 * @property string $title_uz
 * @property string $title_en
 * @property string $photo
 *
 * @property Services[] $services
 */
class Categories extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'categories';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title_ru', 'title_uz', 'title_en'], 'required'],
            [['title_ru', 'title_uz', 'title_en'], 'string', 'max' => 255],
            ['photo', 'image', 'extensions' => 'jpeg, png, jpg, gif', 'skipOnEmpty' => true, 'checkExtensionByMimeType' => true],
        ];
    }

    public function behaviors()
    {
        return [
            [
                'class' => ImageUploadBehavior::class,
                'attribute' => 'photo',
                'createThumbsOnRequest' => true,
                'filePath' => '@storageRoot/store/[[attribute_id]]/[[filename]].[[extension]]',
                'fileUrl' => '@storageHostInfo/store/[[attribute_id]]/[[filename]].[[extension]]',
                'thumbPath' => '@storageRoot/cache/[[attribute_id]]/[[profile]]_[[filename]].[[extension]]',
                'thumbUrl' => '@storageHostInfo/cache/[[attribute_id]]/[[profile]]_[[filename]].[[extension]]',
                'thumbs' => [
                    's16' => ['width' => 16, 'height' => 16],
                    's32' => ['width' => 32, 'height' => 32],
                    's48' => ['width' => 48, 'height' => 48],
                    's128' => ['width' => 128, 'height' => 128],
                    's160' => ['width' => 160, 'height' => 160],
                ],
            ],
        ];
    }
    public function beforeValidate()
    {
        if (parent::beforeValidate()) {
            $this->photo = UploadedFile::getInstance($this, 'photo');
            return true;
        }
        return false;
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
            'photo' => Yii::t('app', 'Photo'),
        ];
    }

    /**
     * Gets query for [[Services]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getServices()
    {
        return $this->hasMany(Services::className(), ['category_id' => 'id']);
    }
}
