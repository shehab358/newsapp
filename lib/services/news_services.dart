import 'package:dio/dio.dart';
import 'package:newsapp/modules/article_module.dart';

class NewsServices {
  final Dio dio = Dio();

  Future<List<ArticleModule>> getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=6ed024b6856541179509dee152fa95cd');
    Map<String, dynamic> jasonData = response.data;
    List<dynamic> articles = jasonData["articles"];

    List<ArticleModule> articlesList = [];

    for (var article in articles) {
      ArticleModule articleModule = ArticleModule(
        imageUrl: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
        source: Source(
          id: article['source']['id'],
          name: article['source']['name'],
        ),
      );
      articlesList.add(articleModule);
    }
    return articlesList;
  }
}
