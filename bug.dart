```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = json.decode(response.body);
      // Accessing a nested JSON field that might not exist. 
      final nestedValue = jsonData['nested']['value']; 
      print('Nested Value: $nestedValue');
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e'); //this will catch various exceptions 
  }
}
```