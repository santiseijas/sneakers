class ProductModel {
  int id;
  String title;
  String description;
  String img;
  String price;
  String tag;
  double ratting;
  bool fav;

  ProductModel(this.id, this.title, this.description, this.img, this.price,
      this.tag, this.ratting, this.fav);
}

List<ProductModel> products = [
  ProductModel(
      1,
      "Nike Air Max",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
      "assets/images/nike.png",
      "99€",
      "img1",
      5,
      true),
  ProductModel(
      2,
      "Converse All Star",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
      "assets/images/converse.png",
      "99€",
      "img2",
      4,
      false),
  ProductModel(
      3,
        "Adidas SuperStar",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
      "assets/images/adidas.png",
      "99€",
      "img3",
      3,
      true),
  ProductModel(
      4,
      "Vans OldSchool",
      "didunt ut labore et dolore magna aliqua. ",
      "assets/images/vans.png",
      "99€",
      "img4",
      2.5,
      true),
  ProductModel(
      5,
      "Rebook Classics",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
      "assets/images/reebok.png",
      "99€",
      "img5",
      1,
      false),
];
