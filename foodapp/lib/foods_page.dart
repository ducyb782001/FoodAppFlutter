import 'package:flutter/material.dart';
import 'package:foodapp/detail_food_page.dart';
import 'package:foodapp/fake_data.dart';
import 'package:foodapp/models/category.dart';
import 'package:foodapp/models/food.dart';

class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage';
  Cattegory? category;
  FoodsPage({this.category});
  @override
  Widget build(BuildContext context) {
    Map<dynamic, dynamic>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map?;
    category = arguments!['category'];

    List<Food> foods = FAKE_FOODS
        .where((food) => food.categoryId == this.category!.id)
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Foods from ${category!.content}'),
      ),
      body: Center(
        child: Center(
          child: foods.length > 0
              ? ListView.builder(
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    Food food = foods[index];
                    return InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => DetailFoodPage(food: food)));
                        Navigator.pushNamed(context, DetailFoodPage.routeName,
                            arguments: {'detailFood': food});
                      },
                      child: Stack(children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.hardEdge,
                            child: Center(
                              child: FadeInImage.assetNetwork(
                                placeholder: 'assets/images/loading.gif',
                                image: food.urlImage!,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: 30,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.timer,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                Text(
                                  '${food.duration?.inMinutes ?? 0} minutes',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          right: 30,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.green.shade600,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(children: <Widget>[
                              Text(
                                '${food.complexity.toString().split('.').last}',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.black),
                              ),
                            ]),
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          right: 30,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '${food.name}',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white),
                            ),
                          ),
                        ),
                      ]),
                    );
                  })
              : Text(
                  'No food found',
                  style: TextStyle(fontSize: 40),
                ),
        ),
      ),
    );
  }
}
