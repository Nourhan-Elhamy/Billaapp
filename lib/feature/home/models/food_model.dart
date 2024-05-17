


import 'package:billaapp/core/utls/app_images.dart';

class FoodModel {
  String image;
  String? title;
  String? price;
   bool fav;

  FoodModel(
  {
    required this.image,
    required this.title
    ,required this.price,
    this.fav =false
});
}
List <FoodModel> foods=[
  FoodModel(image: AppImages.beafburger,
      title: "Beaf Burger",
      price: "7.5\$"),

  FoodModel(
      image: AppImages.spicyshrimp,
      title: "Spicy Shrimp",
      price: "9.5\$"
  ),
  FoodModel(
      image: AppImages.crispyzinger,
      title: "Crispy Zinger",
      price: "5.5\$"
  ),
  FoodModel(
      image: AppImages.meatshawerma,
      title: "Meat Shawerma",
      price: "6.5\$"
  ),
  FoodModel(
      image: AppImages.pizza,
      title: "Pizza",
      price: "4.5\$"
  ),

  FoodModel(
      image: AppImages.beafburger,
      title: "Beaf Burger",
      price: "7.5\$"
  ),
  FoodModel(image: AppImages.beafburger,
      title: "Beaf Burger",
      price: "7.5\$"),
  FoodModel(
      image: AppImages.pizza,
      title: "Pizza",
      price: "4.5\$"
  ),
  FoodModel(
      image: AppImages.spicyshrimp,
      title: "Spicy Shrimp",
      price: "9.5\$"
  ),
];