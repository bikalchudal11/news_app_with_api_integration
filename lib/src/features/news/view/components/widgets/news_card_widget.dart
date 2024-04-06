import 'package:flutter/material.dart';
import 'package:news_app_api/src/core/constants/extensions/theme_extensions.dart';
import 'package:news_app_api/src/core/constants/strings.dart';
import 'package:news_app_api/src/core/router/router.dart';
import 'package:news_app_api/src/features/news/model/articles_model.dart';
import 'package:news_app_api/src/features/news/view/screens/news_desc_screen.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({
    super.key,
    required this.newsArticle,
  });

  final Articles newsArticle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AppNavigator.push(
        context,
        NewsDesc(
          newsArticle: newsArticle,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: NetworkImage(
                  newsArticle.urlToImage!,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                newsArticle.title ?? '',
                style: context.textTheme.bodyLarge,
              ),
              const Divider(),
              const SizedBox(
                height: 5,
              ),
              Text(
                AppStrings.readMore,
                style: context.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
