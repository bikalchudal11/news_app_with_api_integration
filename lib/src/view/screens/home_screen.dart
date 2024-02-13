import 'package:flutter/material.dart';
import 'package:news_app_api/src/view/screens/news_desc.dart';

import 'package:news_app_api/src/view_model/repository/news_repository.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade500,
          automaticallyImplyLeading: false,
          title: const Text(
            "News",
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: NewsRepository.getNews(),
            builder: (context, snapshot) {
              return ListView.builder(
                itemCount: snapshot.data!.articles!.length,
                itemBuilder: (context, index) {
                  var apiTitle =
                      snapshot.data!.articles![index].title.toString();
                  var apiImage =
                      snapshot.data!.articles![index].urlToImage.toString();
                  var apiDesc =
                      snapshot.data!.articles![index].description.toString();
                  var urlApi = snapshot.data!.articles![index].url.toString();
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewsDesc(
                                      urlDesc: urlApi,
                                      newsDesc: apiDesc,
                                      newsImage: apiImage,
                                      newsTitle: apiTitle,
                                    )));
                      },
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                  apiImage,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                apiTitle,
                                style: const TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text("Click to read more.."),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }));
  }
}
