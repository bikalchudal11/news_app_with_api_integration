import 'package:flutter/material.dart';
import 'package:news_app_api/src/features/news/model/articles_model.dart';
import 'package:news_app_api/src/features/news/model/news_model.dart';
import 'package:news_app_api/src/features/news/view/components/widgets/news_card_widget.dart';

class NewsListComponent extends StatelessWidget {
  const NewsListComponent({
    super.key,
    required this.newsModel,
  });

  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsModel.totalResults,
      itemBuilder: (context, index) {
        Articles newsArticle = newsModel.articles![index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: NewsCardWidget(
            newsArticle: newsArticle,
          ),
        );
      },
    );
  }
}
