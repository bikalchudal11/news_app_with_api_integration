import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;
import 'package:news_app_api/src/core/api/api_endpoints.dart';
import 'package:news_app_api/src/features/news/model/news_model.dart';

class NewsRepository {
  static Future<NewsModel> getNews() async {
    var url = Uri.parse(AppEndpoints.topHeadlines);
    try {
      var response = await http.get(url);
      var myData = jsonDecode(response.body);
      return NewsModel.fromJson(myData);
    } catch (e) {
      throw Exception("Error");
    }
  }
}
