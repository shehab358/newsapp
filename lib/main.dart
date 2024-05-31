import 'package:flutter/material.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/view/home.dart';

void main() {
  NewsServices().getNews();
  runApp(
    const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
