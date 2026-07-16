# Code Detector API - PHP Package

Code Detector is a simple tool for detecting the language of code in text. It returns details such as extension, language, family, and more.

## Installation

Install via Composer:

```bash
composer require apiverve/codedetector
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Codedetector\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['code' => 'a = 5
b = 6
c = 7

# calculate the semi-perimeter
s = (a + b + c) / 2

# calculate the area
area = (s*(s-a)*(s-b)*(s-c)) ** 0.5
print(\'The area of the triangle is %0.2f\' %area)']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Codedetector\Client;
use APIVerve\Codedetector\Exceptions\APIException;
use APIVerve\Codedetector\Exceptions\ValidationException;

try {
    $response = $client->execute(['code' => 'a = 5
b = 6
c = 7

# calculate the semi-perimeter
s = (a + b + c) / 2

# calculate the area
area = (s*(s-a)*(s-b)*(s-c)) ** 0.5
print(\'The area of the triangle is %0.2f\' %area)']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "likelihood": 0.99,
    "family": "PYTHON",
    "current": "python",
    "readable": "Python Code",
    "extension": ".py",
    "paradigm": "multi-paradigm",
    "isCompiled": false
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/codedetector?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/codedetector?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/codedetector?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
