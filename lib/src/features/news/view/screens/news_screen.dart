import 'package:flutter/material.dart';
import 'package:news_app_api/src/core/constants/strings.dart';
import 'package:news_app_api/src/features/news/model/news_model.dart';
import 'package:news_app_api/src/features/news/view/components/news_list_component.dart';
import 'package:news_app_api/src/features/news/view_model/repository/news_repository.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => NewsScreenState();
}

class NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          AppStrings.appName,
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: NewsRepository.getNews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            NewsModel? newsModel = snapshot.data;
            if (newsModel == null) {
              return const Center(child: Text('Error while Fetching News'));
            }
            if (newsModel.articles == null || newsModel.articles!.isEmpty) {
              return const Center(child: Text('No Articles Available'));
            }
            return NewsListComponent(newsModel: newsModel);
          }
          return Center(
            child: Text(
              'Error',
              style: const TextTheme().bodyLarge,
            ),
          );
        },
      ),
    );
  }
}
