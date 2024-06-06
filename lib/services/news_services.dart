import 'package:dio/dio.dart';
import 'package:newsapp/modules/article_module.dart';

class NewsServices {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getNews() async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=6ed024b6856541179509dee152fa95cd');
      Map<String, dynamic> jasonData = response.data;
      List<dynamic> articles = jasonData["articles"];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModule = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        );
        articlesList.add(articleModule);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
