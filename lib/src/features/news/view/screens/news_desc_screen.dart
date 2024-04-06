import 'package:flutter/material.dart';
import 'package:news_app_api/src/core/constants/extensions/theme_extensions.dart';
import 'package:news_app_api/src/core/constants/strings.dart';
import 'package:news_app_api/src/features/news/model/articles_model.dart';

class NewsDesc extends StatelessWidget {
  const NewsDesc({
    super.key,
    required this.newsArticle,
  });
  final Articles newsArticle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.newsDesc),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            Text(
              newsArticle.title ?? '',
              style: context.textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            Image(image: NetworkImage(newsArticle.urlToImage!)),
            const SizedBox(
              height: 10,
            ),
            Text(
              newsArticle.description ?? '',
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
