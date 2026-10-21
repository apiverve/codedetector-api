# Code Detector API - Ruby Gem

Code Detector identifies the programming language of any submitted code snippet. It returns the canonical language name, readable title, and standard file extension for the detected code.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_codedetector'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_codedetector
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_codedetector'

# Initialize the client
client = APIVerve::Codedetector::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ code: "a = 5
b = 6
c = 7

# calculate the semi-perimeter
s = (a + b + c) / 2

# calculate the area
area = (s*(s-a)*(s-b)*(s-c)) ** 0.5
print('The area of the triangle is %0.2f' %area)" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ code: "a = 5
b = 6
c = 7

# calculate the semi-perimeter
s = (a + b + c) / 2

# calculate the area
area = (s*(s-a)*(s-b)*(s-c)) ** 0.5
print('The area of the triangle is %0.2f' %area)" })
  puts response["data"]
rescue APIVerve::Codedetector::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Codedetector::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Codedetector::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/codedetector?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/codedetector?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/codedetector?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
