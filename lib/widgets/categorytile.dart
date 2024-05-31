import 'package:flutter/material.dart';
import 'package:newsapp/modules/article_module.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key, required this.article});

  final ArticleModule article;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            article.imageUrl ?? "assets/general.avif",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset(
                "assets/general.avif",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          article.subTitle ?? "",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
