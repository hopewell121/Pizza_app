

import 'package:pizzaapp/utils/constants/image_constants.dart';

class PizzaModel {
String name;
String description;
String image;
String price;

PizzaModel({
  required this.name,
  required this.description,
  required this.image,
  required this.price,



});
}

final List<PizzaModel> pizzaData =[

  PizzaModel(name: 'pepperoni Pizza', 
  description: 'Pepperoni pizza, Margarita \nPizza Margherita Italian \ncuisine Tomato', 
  image: ImageConstants.pepproni, 
  price: '\$29'),

 PizzaModel(name: 'Pizza Cheese', 
  description: 'Food pizza dish cuisine \njunk food, Fast Food, \nFlatbread, Ingredient', 
  image: ImageConstants.pepproni2, 
  price: '\$22'),

  PizzaModel(name: 'Peppy Paneer', 
  description: 'A pizza loaded with \nCrunchy onions, crisp \nCapsicum, juicy tomato', 
  image: ImageConstants.pepproni3, 
  price: '\$29'),

  PizzaModel(name: 'Mexican Green wave', 
  description: 'Food pizza dish cuisine \njunk food, Fast Food, \nFlatbread, Ingredient', 
  image: ImageConstants.pepproni4, 
  price: '\$25'),
];