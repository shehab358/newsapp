import 'package:flutter/material.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/widgets/CategoryTileViewBuilder.dart';

// ignore: must_be_immutable
class CategoryTileView extends StatefulWidget {
  const CategoryTileView({super.key, required this.category});
final String category;
  @override
  State<CategoryTileView> createState() => _CategoryTileViewState();
}

class _CategoryTileViewState extends State<CategoryTileView> {
  bool isLoading = true;
  late Future future;
  @override
  void initState() {
    future = NewsServices().getNews(category: widget.category);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CategoryTileViewBuilder(articles: snapshot.data);
          } else if (snapshot.hasError) {
            return const Text("ERROR");
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
