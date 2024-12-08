```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);

      //Robust way to access nested JSON fields
      final nestedValue = jsonData['nested']?['value'];

      if(nestedValue != null){
        print('Nested Value: $nestedValue');
      } else {
        print("Nested field 'value' or 'nested' not found in JSON");
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```