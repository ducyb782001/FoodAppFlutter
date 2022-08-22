import 'package:flutter/material.dart';
import 'package:foodapp/categories_page.dart';
import 'package:foodapp/detail_food_page.dart';
import 'package:foodapp/foods_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App with Navigation',
      initialRoute: '/', // this is root
      routes: {
        '/FoodsPage': ((context) => FoodsPage()),
        '/CategoriesPage': ((context) => CategoriesPage()),
        '/DetailFoodsPage': ((context) => DetailFoodPage()),
      },
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Itim',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)))),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Food\'s categories'),
          centerTitle: false,
        ),
        body: SafeArea(child: CategoriesPage()),
      ),
    );
  }
}
