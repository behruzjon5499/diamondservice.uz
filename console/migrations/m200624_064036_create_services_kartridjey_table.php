<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%services_kartridjey}}`.
 */
class m200624_064036_create_services_kartridjey_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        $this->createTable('{{%services_kartridjey}}', [
            'id' => $this->primaryKey(),
            'title_ru' => $this->string()->notNull(),
            'title_uz' => $this->string()->notNull(),
            'title_en' => $this->string()->notNull(),
            'price' => $this->string()->notNull(),
            'category_kartridjey_id' => $this->integer()->notNull(),
        ], $tableOptions);
        $this->createIndex('index-services_kartridjey-category_kartridjey_id', 'services_kartridjey', 'category_kartridjey_id');
        $this->addForeignKey('fkey-services_kartridjey-category_kartridjey_id', 'services_kartridjey', 'category_kartridjey_id', 'categories_kartridjey', 'id', 'RESTRICT', 'RESTRICT');

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%services_kartridjey}}');
    }
}
