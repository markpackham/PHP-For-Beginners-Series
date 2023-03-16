<?php

namespace Core;

class Validator
{
    // INF is the infinite, a predefined constant from PHP
    // https://www.php.net/manual/en/math.constants.php
    public static function string($value, $min = 1, $max = INF)
    {
        $value = trim($value);

        return strlen($value) >= $min && strlen($value) <= $max;
    }

    public static function email($value)
    {
        return filter_var($value, FILTER_VALIDATE_EMAIL);
    }
}
