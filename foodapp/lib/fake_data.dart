import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/models/food.dart';
import 'models/category.dart';

List<Cattegory?> FAKE_CATEGORIES = [
  Cattegory(id: 1, content: 'Japanese\'s Food', color: Colors.deepOrange),
  Cattegory(id: 2, content: 'Pizza', color: Colors.teal),
  Cattegory(id: 3, content: 'Hamburger', color: Colors.cyanAccent),
  Cattegory(id: 4, content: 'Italian', color: Colors.pink),
  Cattegory(id: 5, content: 'Milk and Yoghurt', color: Colors.blueAccent),
  Cattegory(id: 6, content: 'Vegetables', color: Colors.green),
  Cattegory(id: 7, content: 'Fruits', color: Colors.redAccent)
];

var FAKE_FOODS = [
  // array of food object
  Food(
      name: "sushi - 寿司",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/c/cf/Salmon_Sushi.jpg",
      duration: Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: ['Sushi-meshi', 'Nori', 'Condiments'],
      categoryId: 1),
  Food(
      name: "Pizza tonda",
      urlImage: "https://www.angelopo.com/filestore/images/pizza-tonda.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Hard,
      ingredients: [
        'Tomato sauce',
        'Fontina cheese',
        'Pepperoni',
        'Onions',
        'Mushrooms',
        'pepperoncini'
      ],
      categoryId: 2),
  Food(
      name: "Makizushi",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/0/0b/KansaiSushi.jpg",
      complexity: Complexity.Simple,
      duration: Duration(minutes: 20),
      ingredients: [
        'Tomato sauce',
        'Fontina cheese',
        'Pepperoni',
        'Onions',
        'Mushrooms',
        'pepperoncini'
      ],
      categoryId: 1),
  Food(
      name: "Tempura",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/a/ac/Peixinhos_da_horta.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Simple,
      ingredients: [
        'Tomato sauce',
        'Fontina cheese',
        'Pepperoni',
        'Onions',
        'Mushrooms',
        'pepperoncini'
      ],
      categoryId: 1),
  Food(
      name: "Neapolitan pizza",
      urlImage:
          "https://img-global.cpcdn.com/recipes/7f1a5380090f6300/1280x1280sq70/photo.jpg",
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Mushrooms'],
      categoryId: 2),
  Food(
      name: "Sashimi",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Sashimi_-_Tokyo_-_Japan.jpg/2880px-Sashimi_-_Tokyo_-_Japan.jpg",
      duration: Duration(hours: 1, minutes: 5),
      ingredients: [
        'Tomato sauce',
        'Fontina cheese',
        'Pepperoni',
        'Onions',
        'Mushrooms',
        'pepperoncini'
      ],
      complexity: Complexity.Medium,
      categoryId: 1),
  Food(
      name: "Homemade Humburger",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/5/58/Homemade_hamburger.jpg",
      duration: Duration(minutes: 20),
      complexity: Complexity.Hard,
      ingredients: [
        'Tomato sauce',
        'Fontina cheese',
        'Pepperoni',
        'Onions',
        'Mushrooms',
        'pepperoncini'
      ],
      categoryId: 3),
];
