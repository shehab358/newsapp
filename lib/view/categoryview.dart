import 'package:flutter/material.dart';
import 'package:newsapp/widgets/CategoryTileView.dart';

class Categoryview extends StatelessWidget {
  const Categoryview({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: CustomScrollView(
                slivers: [
          SliverToBoxAdapter(
            child: CategoryTileView(
              category: category,
            ),
          ),
                ],
              ),
        ));
  }
}
