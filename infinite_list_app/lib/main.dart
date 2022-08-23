import 'package:flutter/material.dart';
import 'package:infinite_list_app/infinite_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: InfiniteList(),
    );
  }
}
