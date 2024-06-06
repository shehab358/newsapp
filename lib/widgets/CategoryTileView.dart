import 'package:flutter/material.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/widgets/CategoryTileViewBuilder.dart';

class CategoryTileView extends StatefulWidget {
  const CategoryTileView({super.key});

  @override
  State<CategoryTileView> createState() => _CategoryTileViewState();
}

class _CategoryTileViewState extends State<CategoryTileView> {
  bool isLoading = true;
  @override
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsServices().getNews(),
        builder: (context, snapshot) {
          return CategoryTileViewBuilder(articles: snapshot.data ?? []);
        });
  }
}
