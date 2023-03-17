<?php

namespace Core\Middleware;

class Authenticated
{
    public function handle()
    {
        // an example of a Null coalescing operator
        // https://www.php.net/manual/en/migration70.new-features.php
        // Returns first operand if it exists and is not null; 
        // otherwise it returns its second operand eg "false".
       if (! $_SESSION['user'] ?? false) {
            header('location: /');
            exit();
        }
    }
}