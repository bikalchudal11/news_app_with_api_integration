// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class NewsDesc extends StatelessWidget {
  String newsTitle;
  String newsDesc;
  String newsImage;
  String urlDesc;
  NewsDesc({
    Key? key,
    required this.newsTitle,
    required this.newsDesc,
    required this.newsImage,
    required this.urlDesc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            Text(
              newsTitle,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Image(image: NetworkImage(newsImage)),
            const SizedBox(
              height: 10,
            ),
            Text(newsDesc),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
