import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiProvider {
  static const apiBase = 'https://api.themoviedb.org/3';
  static const apiKey = 'de805772c864b7ef5da70d37e060d574';

  Future<Map<String, dynamic>> getAllTopRated() async {
    final http.Response response =
        await http.get(Uri.parse(apiBase + '/movie/top_rated?api_key=$apiKey'));
    if (response.statusCode == 200) return json.decode(response.body);
    throw Exception();
  }
}
