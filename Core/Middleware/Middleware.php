<?php

namespace Core\Middleware;

class Middleware
{
    public const MAP = [
        'guest' => Guest::class,
        'auth' => Authenticated::class
    ];

    public static function resolve($key)
    {
        if (!$key) {
            return;
        }

        // Late Static Bindings
        // https://www.php.net/manual/en/language.oop5.late-static-bindings.php
        // for "static" use the current instance
        $middleware = static::MAP[$key] ?? false;

        // If the middleware key is something we aren't familir with chuck an exception
        // eg in routes.php router->get()->only('somthingNotGuestOrAuth!!!!');
        // so 'somthingNotGuestOrAuth!!!!' would trigger the error
        if (!$middleware) {
            throw new \Exception("No matching middleware found for key '{$key}'.");
        }

        (new $middleware)->handle();
    }
}