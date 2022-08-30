import 'package:flutter/material.dart';
import 'package:flutter_api_test/responsive/mobile_screen_layout.dart';
import 'package:flutter_api_test/responsive/responsive_layout_screen.dart';
import 'package:flutter_api_test/responsive/web_screen_layout.dart';
import 'package:flutter_api_test/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram CLone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ),
    );
  }
}
