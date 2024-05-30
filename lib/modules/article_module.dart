class ArticleModule {
  final String? imageUrl;
  final String title;
  final String? subTitle;
  final Source source;
  ArticleModule(
      {required this.source,
      required this.imageUrl,
      required this.title,
      required this.subTitle});
}

class Source {
  final String id;
  final String name;

  Source({required this.id, required this.name});
}
