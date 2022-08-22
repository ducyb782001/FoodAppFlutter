import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/models/category.dart';
import 'foods_page.dart';

class CategoryItem extends StatelessWidget {
  // Mỗi item k trực tiếp thay đổi dữ liệu
  Cattegory? category;
  CategoryItem({this.category});
  @override
  Widget build(BuildContext context) {
    Color? _color = this.category!.color;
    return InkWell(
      onTap: () {
        print('Tap to category: ${this.category!.content}');
        // Navigate to other
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => FoodsPage(category: this.category),
        // ));
        Navigator.pushNamed(context, FoodsPage.routeName,
            arguments: {'category': category});
        // FoodsPage is "route's name"
      },
      splashColor: Colors.deepPurple,
      child: Container(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                category!.content,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Itim',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [_color!.withOpacity(0.6), _color],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              color: _color,
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
