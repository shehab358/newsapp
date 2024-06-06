import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:newsapp/modules/category_module.dart';
import 'package:newsapp/view/categoryview.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key, required this.ctgry});

  final CategoryModule ctgry;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Categoryview();
            },
          ),
        );
      },
      child: Container(
        height: 150,
        width: 250,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                ctgry.imageasseturl,
                width: 250,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              ctgry.categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
