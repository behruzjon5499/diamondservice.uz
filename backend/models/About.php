<?php

namespace backend\models;

use Yii;
use yii\behaviors\AttributeBehavior;
use yii\behaviors\TimestampBehavior;
use yii\db\ActiveRecord;
use yii\web\UploadedFile;
use yiidreamteam\upload\ImageUploadBehavior;

/**
 * This is the model class for table "about".
 *
 * @property int $id
 * @property string $photo
 * @property string $phone
 * @property string $address
 * @property string $email
 * @property string $hours
 * @property string $description_ru
 * @property string $description_uz
 * @property string $description_en
 */
class About extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'about';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [[ 'phone', 'address', 'email', 'hours', 'description_ru', 'description_uz', 'description_en'], 'required'],
            [['description_ru', 'description_uz', 'description_en'], 'string'],
            [['phone', 'address', 'email', 'hours'], 'string', 'max' => 255],
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
            'photo' => Yii::t('app', 'Photo'),
            'phone' => Yii::t('app', 'Phone'),
            'address' => Yii::t('app', 'Address'),
            'email' => Yii::t('app', 'Email'),
            'hours' => Yii::t('app', 'Hours'),
            'description_ru' => Yii::t('app', 'Description Ru'),
            'description_uz' => Yii::t('app', 'Description Uz'),
            'description_en' => Yii::t('app', 'Description En'),
        ];
    }
}
