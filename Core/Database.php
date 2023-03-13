<?php

namespace Core;

use PDO;

// It's general practice if a PHP file only contains 1 class then the file itself should start
// with a capital letter hence Database.php
class Database
{
    public $connection;
    public $statement;

    public function __construct($config, $username = 'root', $password = '')
    {
        // DSN means Data Source Name
        // Generate URL-encoded query string
        // https://www.php.net/manual/en/function.http-build-query.php

        // essentially
        // $dsn = "mysql:host=localhost;port=3306;dbname=myapp;user=root;charset=utf8mb4";
        $dsn = 'mysql:' . http_build_query($config, '', ';');

        $this->connection = new PDO($dsn, $username, $password, [
            // Scope Resolution Operator (::)  https://youtu.be/PDtBKgOJhGY?t=116
            // https://www.php.net/manual/en/language.oop5.paamayim-nekudotayim.php
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]);
    }

    public function query($query, $params = [])
    {
        $this->statement = $this->connection->prepare($query);

        $this->statement->execute($params);

        return $this;
    }

    public function get()
    {
        return $this->statement->fetchAll();
    }

    public function find()
    {
        return $this->statement->fetch();
    }

    public function findOrFail()
    {
        $result = $this->find();

        if (!$result) {
            abort();
        }

        return $result;
    }
}
