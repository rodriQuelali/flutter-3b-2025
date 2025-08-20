
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class UserRepository {
  final String _apiUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<List<User>> getUsers() async {
    final response = await http.get(Uri.parse(_apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}