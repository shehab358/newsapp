// ignore: file_names
import 'package:flutter/material.dart';
import 'package:newsapp/modules/article_module.dart';
import 'package:newsapp/widgets/categorytile.dart';

class CategoryTileViewBuilder extends StatelessWidget {
  const CategoryTileViewBuilder({
    super.key,
    required this.articles,
  });

  final List<ArticleModel> articles;

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