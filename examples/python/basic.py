"""
Code Detector API - Basic Usage Example

This example demonstrates the basic usage of the Code Detector API.
API Documentation: https://docs.apiverve.com/ref/codedetector
"""

import os
import requests
import json

API_KEY = os.getenv('APIVERVE_API_KEY', 'YOUR_API_KEY_HERE')
API_URL = 'https://api.apiverve.com/v1/codedetector'

def call_codedetector_api():
    """
    Make a POST request to the Code Detector API
    """
    try:
        # Request body
        request_body &#x3D; {
    &#x27;code&#x27;: &#x27;a &#x3D; 5\nb &#x3D; 6\nc &#x3D; 7\n\n# calculate the semi-perimeter\ns &#x3D; (a + b + c) / 2\n\n# calculate the area\narea &#x3D; (s*(s-a)*(s-b)*(s-c)) ** 0.5\nprint(&#x27;The area of the triangle is %0.2f&#x27; %area)&#x27;
}

        headers = {
            'x-api-key': API_KEY,
            'Content-Type': 'application/json'
        }

        response = requests.post(API_URL, headers=headers, json=request_body)

        # Raise exception for HTTP errors
        response.raise_for_status()

        data = response.json()

        # Check API response status
        if data.get('status') == 'ok':
            print('✓ Success!')
            print('Response data:', json.dumps(data['data'], indent=2))
            return data['data']
        else:
            print('✗ API Error:', data.get('error', 'Unknown error'))
            return None

    except requests.exceptions.RequestException as e:
        print(f'✗ Request failed: {e}')
        return None

if __name__ == '__main__':
    print('📤 Calling Code Detector API...\n')

    result = call_codedetector_api()

    if result:
        print('\n📊 Final Result:')
        print(json.dumps(result, indent=2))
    else:
        print('\n✗ API call failed')
