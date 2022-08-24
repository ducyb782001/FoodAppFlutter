import 'package:flutter/material.dart';
import 'package:infinite_list_app/infinite_list.dart';
import 'package:infinite_list_app/view/posts_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends MaterialApp {
  const MyApp({super.key}) : super(home: const PostsPage());
}
