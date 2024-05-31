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
  List<ArticleModule> articles = [];

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices().getNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: articles.length,
      itemBuilder: (context, i) {
        return CategoryTile(article: articles[i]);
      },
    );
  }
}
