// ignore: file_names
import 'package:flutter/material.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/widgets/CategoryTileViewBuilder.dart';

// ignore: must_be_immutable
class CategoryTileView extends StatelessWidget {
   CategoryTileView({super.key});

  bool isLoading = true;

  @override
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsServices().getNews(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CategoryTileViewBuilder(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const Text("ERROR");
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
