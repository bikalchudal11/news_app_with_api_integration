class AppEndpoints {
  static String baseUrl = 'https://newsapi.org';
  static String version = '/v2';
  static String apiKey = '&apiKey=a2523562ad684b9995fdf8b667b6c869#';
  static String topHeadlines =
      '$baseUrl$version/top-headlines?sources=bbc-news$apiKey';
}
