# Code Detector API - Dart/Flutter Client

Code Detector is a simple tool for detecting the language of code in text. It returns details such as extension, language, family, and more.

[![pub package](https://img.shields.io/pub/v/apiverve_codedetector.svg)](https://pub.dev/packages/apiverve_codedetector)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Code Detector API](https://apiverve.com/marketplace/codedetector?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_codedetector: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_codedetector/apiverve_codedetector.dart';

void main() async {
  final client = CodedetectorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'code': 'a = 5
b = 6
c = 7

# calculate the semi-perimeter
s = (a + b + c) / 2

# calculate the area
area = (s*(s-a)*(s-b)*(s-c)) ** 0.5
print(\'The area of the triangle is %0.2f\' %area)'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "likelihood": 0.99,
    "family": "PYTHON",
    "current": "python",
    "readable": "Python Code",
    "extension": ".py"
  }
}
```

## API Reference

- **API Home:** [Code Detector API](https://apiverve.com/marketplace/codedetector?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/codedetector](https://docs.apiverve.com/ref/codedetector?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
