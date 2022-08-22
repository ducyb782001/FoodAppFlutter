import 'dart:math';

import 'category.dart';
import 'package:flutter/cupertino.dart';

class Food {
  int? id;
  String? name;
  String? urlImage;
  Duration? duration; // Time to finish
  Complexity? complexity;
  List<String>? ingredients;
  int? categoryId;
  Food(
      {@required this.name,
      @required this.urlImage,
      @required this.duration,
      this.complexity,
      this.ingredients,
      this.categoryId}) {
    // id is auto-increment
    this.id = Random().nextInt(1000);
  }
}

enum Complexity { Simple, Medium, Hard }
