import 'package:flutter/material.dart';
import 'package:foodapp/models/food.dart';

class DetailFoodPage extends StatelessWidget {
  Food? food;
  static const String routeName = '/DetailFoodsPage';
  DetailFoodPage({this.food});
  @override
  Widget build(BuildContext context) {
    Map<dynamic, dynamic>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map?;
    food = arguments!['detailFood'];

    print('Ingredients: ${food!.ingredients}');
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('${food!.name}')),
      body: Column(
        children: <Widget>[
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif',
                image: food!.urlImage ?? ''),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Ingredients: ',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: this.food!.ingredients!.length,
                itemBuilder: ((context, index) {
                  String ingredint = this.food!.ingredients![index];
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        '#${index + 1}',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    title: Text(
                      ingredint,
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}
