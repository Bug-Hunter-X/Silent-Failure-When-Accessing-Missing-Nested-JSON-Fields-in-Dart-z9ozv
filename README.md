# Silent Failure When Accessing Missing Nested JSON Fields in Dart

This example demonstrates a common issue in Dart when handling JSON responses: silently failing when accessing nested fields that may not exist.  The code attempts to access `jsonData['nested']['value']` which causes an error if 'nested' or 'value' is missing, leading to an unexpected app behavior.

The solution provides a more robust approach using the `?` operator (null-aware operator) and a try-catch block for a complete error handling. 
