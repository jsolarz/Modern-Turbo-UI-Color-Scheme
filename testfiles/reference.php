<?php
// PHP Reference File for Theme Testing

declare(strict_types=1);

namespace App\ThemeTest;

use DateTime;
use Exception;

const VERSION = '1.0.0';

interface LoggerInterface {
    public function log(string $level, string $message, array $context = []): void;
}

abstract class BaseController {
    protected LoggerInterface $logger;

    public function __construct(LoggerInterface $logger) {
        $this->logger = $logger;
    }

    abstract public function handle(array $request): array;
}

class HomeController extends BaseController {
    public function handle(array $request): array {
        $name = $request['name'] ?? 'World';

        $this->logger->log('info', 'Handling request', ['name' => $name]);

        return [
            'time' => (new DateTime())->format(DateTime::ATOM),
            'greeting' => sprintf("Hello, %s!", $name),
            'version' => VERSION,
        ];
    }
}

class EchoLogger implements LoggerInterface {
    public function log(string $level, string $message, array $context = []): void {
        echo strtoupper($level) . ': ' . $message . ' ' . json_encode($context) . PHP_EOL;
    }
}

try {
    $logger = new EchoLogger();
    $controller = new HomeController($logger);
    $response = $controller->handle($_GET);
    header('Content-Type: application/json');
    echo json_encode($response, JSON_PRETTY_PRINT);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);
}
