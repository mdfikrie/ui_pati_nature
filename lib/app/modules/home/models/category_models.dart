class CategoryModel {
  String? gambar;

  CategoryModel(this.gambar);
}

List<CategoryModel> category =
    categoryData.map((e) => CategoryModel(e['gambar'])).toList();

var categoryData = [
  {
    "gambar": "assets/images/img_beach.png",
  },
  {
    "gambar": "assets/images/img_mountain.png",
  },
  {
    "gambar": "assets/images/img_river.png",
  },
];
