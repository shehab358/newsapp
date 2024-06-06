import 'package:dio/dio.dart';
import 'package:newsapp/modules/article_module.dart';

class NewsServices {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getNews() async {
    try {
      Response response = await dio.get(
          'https://newsdata.io/api/1/latest?country=eg&apikey=pub_45762471aae685a37e929b25b4a3e14215606');
      Map<String, dynamic> jasonData = response.data;
      List<dynamic> articles = jasonData["results"];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModule = ArticleModel(
          image: article['image_url'],
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
