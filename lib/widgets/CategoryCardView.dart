// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newsapp/modules/category_module.dart';
import 'package:newsapp/widgets/categorycard.dart';

class CategoryCardView extends StatelessWidget {
  const CategoryCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, i) {
        return Categorycard(
          ctgry: categories[i],
        );
      },
    );
  }
}
