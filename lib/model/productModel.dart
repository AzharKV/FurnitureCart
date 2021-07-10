class ProductModel {
  final String name;
  final String imagePath;
  final double ratings;
  final double amount;

  ProductModel(
      {required this.name,
      required this.amount,
      required this.imagePath,
      required this.ratings});
}

List<ProductModel> productsList = [
  ProductModel(
      name: "Tortor Chair",
      amount: 256.00,
      imagePath: "assets/images/chair1.png",
      ratings: 4.5),
  ProductModel(
      name: "Morbi Chair",
      amount: 284.00,
      imagePath: "assets/images/chair2.png",
      ratings: 4.8),
  ProductModel(
      name: "Pretium Chair",
      amount: 232.00,
      imagePath: "assets/images/chair3.png",
      ratings: 4.3),
  ProductModel(
      name: "Blandit Chair",
      amount: 224.00,
      imagePath: "assets/images/chair4.png",
      ratings: 4.1),
  ProductModel(
      name: "Tortor Chair",
      amount: 256.00,
      imagePath: "assets/images/chair1.png",
      ratings: 4.5),
  ProductModel(
      name: "Morbi Chair",
      amount: 284.00,
      imagePath: "assets/images/chair2.png",
      ratings: 4.8),
  ProductModel(
      name: "Pretium Chair",
      amount: 232.00,
      imagePath: "assets/images/chair3.png",
      ratings: 4.3),
  ProductModel(
      name: "Blandit Chair",
      amount: 224.00,
      imagePath: "assets/images/chair4.png",
      ratings: 4.1),
];
