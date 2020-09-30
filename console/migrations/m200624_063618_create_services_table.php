<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%services}}`.
 */
class m200624_063618_create_services_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        $this->createTable('{{%services}}', [
            'id' => $this->primaryKey(),
            'title_ru' => $this->string()->notNull(),
            'title_uz' => $this->string()->notNull(),
            'title_en' => $this->string()->notNull(),
            'price' => $this->string()->notNull(),
            'category_id' => $this->integer()->notNull(),
        ], $tableOptions);
        $this->createIndex('index-services-category_id', 'services', 'category_id');
        $this->addForeignKey('fkey-services-category_id', 'services', 'category_id', 'categories', 'id', 'RESTRICT', 'RESTRICT');
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%services}}');
    }
}
