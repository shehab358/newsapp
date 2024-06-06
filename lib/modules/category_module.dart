class CategoryModule {
  String imageasseturl;
  String categoryName;
  String category;
  CategoryModule({required this.categoryName, required this.imageasseturl, required this.category});
}

List<CategoryModule> categories = [
   CategoryModule(categoryName: "General", imageasseturl: "assets/general.avif", category: 'top'),
  CategoryModule(
      categoryName: "Business", imageasseturl: "assets/business.avif", category: 'business'),
  CategoryModule(
      categoryName: "Entertaiment", imageasseturl: "assets/entertaiment.avif", category: 'entertainment'),
  CategoryModule(categoryName: "Health", imageasseturl: "assets/health.avif", category: 'health'),
  CategoryModule(categoryName: "Scince", imageasseturl: "assets/science.avif", category: 'science'),
  CategoryModule(categoryName: "Sports", imageasseturl: "assets/sports.avif", category: 'sports'),
  CategoryModule(
      categoryName: "Technology", imageasseturl: "assets/technology.jpeg", category: 'technology'),
      
];
