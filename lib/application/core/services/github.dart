import 'package:flutter/services.dart';
import 'package:http/http.dart';

// Connects to a GitHub private repository to get the database files.
class GitHub {
  GitHub._();

  static final GitHub _instance = GitHub._();

  factory GitHub() {
    return _instance;
  }

  // This method tries to read a key from the assets.
  Future<String> _key() async {
    try {
      // Get the token from the key file, for copyright purpose the database is closed to the public.
      return await rootBundle.loadString('assets/github.key');
    }
    catch (_) {
      // Without a key you can't access the private repository, but don't worry a mocked data will provided.
      return 'no-key';
    }
  }

  // This method is called from the Repository class and returns a JSON string.
  Future<String> table(String file) async {
    String key = await _key();
    Response response = await get(
      Uri.parse('https://raw.githubusercontent.com/KidGbzin/Iruna-Online/database/JSONs/$file'),
      headers: {
        "Accept": "application/json",
        "Authorization": "token $key",
        "Content-Type": "application/vnd.github.raw",
      }
    );
    try {
      if (response.statusCode == 200) {
        // In case of success returns a string from the database.
        return response.body;
      }
      // In case of failure tries to find the mocked file.
      return await rootBundle.loadString('assets/mocked/$file');
    }
    catch (_) {
      // Throws a error if the mocked file is not available.
      throw Exception('Unable to find the mocked file.');
    }
  }
}