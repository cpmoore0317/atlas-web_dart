import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  final url = Uri.parse('https://rickandmortyapi.com/api/character');

  try {
    // Send GET request to the API
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // Parse the response body
      Map<String, dynamic> data = jsonDecode(response.body);
      List<dynamic> characters = data['results'];

      // Print each character's name
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      // Handle non-200 status codes
      print('Failed to fetch characters: ${response.statusCode}');
    }
  } catch (error) {
    // Handle any errors
    print('error caught: $error');
  }
}
