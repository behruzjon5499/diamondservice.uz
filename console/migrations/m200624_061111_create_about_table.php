<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%about}}`.
 */
class m200624_061111_create_about_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        $this->createTable('{{%about}}', [
            'id' => $this->primaryKey(),
            'photo' => $this->string()->notNull(),
            'phone' => $this->string()->notNull(),
            'address' => $this->string()->notNull(),
            'email' => $this->string()->notNull(),
            'hours' => $this->string()->notNull(),
            'description_ru' => $this->text()->notNull(),
            'description_uz' => $this->text()->notNull(),
            'description_en' => $this->text()->notNull(),
        ], $tableOptions);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%about}}');
    }
}
