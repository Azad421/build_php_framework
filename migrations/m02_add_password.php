<?php
class m02_add_password
{
    public $db;
    public function __construct()
    {
        $this->db = \app / mvcframework\Application::$app->db;;
    }

    public function up()
    {
        $this->db->pdo->exec("ALTER TABLE users ADD COLUMN password VARCHAR(512) NOT NULL");
    }

    public function down()
    {
        $this->db->pdo->exec("ALTER TABLE users DROP COLUMN password;");
    }
}
