import 'package:flutter/material.dart';
import 'package:flutter_api_test/utils/dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResponsiveLayout(
      {Key? key,
      required this.webScreenLayout,
      required this.mobileScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          // webscreen
          return webScreenLayout;
        }
        // mobile screen
        return mobileScreenLayout;
      }),
    );
  }
}
