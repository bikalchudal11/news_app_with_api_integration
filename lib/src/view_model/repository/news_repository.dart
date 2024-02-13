import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart' as http;
import 'package:news_app_api/src/model/news_model.dart';

String newsApi =
    "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=a2523562ad684b9995fdf8b667b6c869#";

class NewsRepository {
  static Future<NewsModel> getNews() async {
    var url = Uri.parse(newsApi);
    try {
      var response = await http.get(url);
      var myData = jsonDecode(response.body);
      return NewsModel.fromJson(myData);
    } catch (e) {
      throw Exception("Error");
    }
  }
}
