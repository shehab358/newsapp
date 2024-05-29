class CategoryModule {
  String imageasseturl;
  String categoryName;
  CategoryModule({required this.categoryName, required this.imageasseturl});
}

List<CategoryModule> categories = [
  CategoryModule(
      categoryName: "Business", imageasseturl: "assets/business.avif"),
  CategoryModule(
      categoryName: "Entertaiment", imageasseturl: "assets/entertaiment.avif"),
  CategoryModule(categoryName: "General", imageasseturl: "assets/general.avif"),
  CategoryModule(categoryName: "Health", imageasseturl: "assets/health.avif"),
  CategoryModule(categoryName: "Scince", imageasseturl: "assets/science.avif"),
  CategoryModule(categoryName: "Sports", imageasseturl: "assets/sports.avif"),
  CategoryModule(
      categoryName: "Technology", imageasseturl: "assets/technology.jpeg"),
];
