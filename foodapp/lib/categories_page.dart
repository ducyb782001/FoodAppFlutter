import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodapp/category_item.dart';
import 'package:foodapp/fake_data.dart';

class CategoriesPage extends StatelessWidget {
  static const String routeName = '/CategoriesPage';
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(12),
      children: FAKE_CATEGORIES
          .map((eachCategory) => CategoryItem(category: eachCategory))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3 / 2, // width/height
        crossAxisSpacing: 12, // Space horizontal and vertical
        mainAxisSpacing: 12,
      ),
    );
  }
}
