import 'package:flutter/material.dart';
import 'package:newsapp/modules/article_module.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/widgets/categorytile.dart';

class CategoryTileView extends StatefulWidget {
  const CategoryTileView({super.key});

  @override
  State<CategoryTileView> createState() => _CategoryTileViewState();
}

class _CategoryTileViewState extends State<CategoryTileView> {
  List<ArticleModel> articles = [];

  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices().getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CircularProgressIndicator(
            color: Colors.blue,
          )
        : ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: articles.length,
            itemBuilder: (context, i) {
              return CategoryTile(article: articles[i]);
            },
          );
  }
}
