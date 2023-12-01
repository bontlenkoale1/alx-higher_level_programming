#!/usr/bin/python3
"""
Script that takes in a URL, sends a request to the URL, and
displays the value of the variable X-Request-Id in the response header.
"""

import requests
import sys

if __name__ == "__main__":
    url = sys.argv[1]
    response = requests.get(url)

    # Check if the X-Request-Id header is present in the response
    if 'X-Request-Id' in response.headers:
        print(response.headers['X-Request-Id'])
