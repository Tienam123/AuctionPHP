<?php

declare(strict_types=1);

use function DI\env;

return [
    'config' => [
        'debug' => (bool) getenv('APP_DEBUG'),
    ]
];