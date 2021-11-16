<?php
class m01_initial
{
    public $db;
    public function __construct()
    {
        $this->db = \app / mvcframework\Application::$app->db;;
    }
    public function up()
    {

        $sql = "CREATE TABLE users (
            id INT AUTO_INCREMENT PRIMARY KEY,
            email VARCHAR(255) NOT NULL,
            firstname VARCHAR(255) NOT NULL,
            lastname VARCHAR(255) NOT NULL,
            status TINYINT NOT NULL,
            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
         ) ENGINE = INNODB;";

        $this->db->pdo->exec($sql);
    }

    public function down()
    {
        $sql = "CREATE TABLE users";
        $this->db->pdo->exec($sql);
    }
}
