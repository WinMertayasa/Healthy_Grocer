import 'dart:convert';
import 'package:aceh_food/dto/news.dart';
import 'package:http/http.dart' as http;
import 'package:aceh_food/endpoints/endpoints.dart';

class Dataservices {
  static Future<List<News>> fetchNews() async {
    final response = await http.get(Uri.parse(EndPoints.news));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((item) => News.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }

  static Future<void> sendNews(String title, String body) async {
    Map<String, String> newsData = {
      "title": title,
      "body": body,
    };
    String jsonData = jsonEncode(newsData);
    await http.post(Uri.parse(EndPoints.news),
        body: jsonData, headers: {'Content-Type': 'application/json'});
  }

  static Future<void> deleteData(String id) async {
    await http.delete(Uri.parse('${EndPoints.news}/$id'),
        headers: {'Content-type': 'application/json'});
  }

  static Future<void> updateData(String id, String title, String body) async {
    Map<String, String> data = {"id": id, "title": title, "body": body};
    String jsonData = jsonEncode(data);
    await http.put(Uri.parse('${EndPoints.news}/$id'),
        body: jsonData, headers: {'Content-type': 'application/json'});
  }
}
