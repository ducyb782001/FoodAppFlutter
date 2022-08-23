import 'package:flutter/material.dart';
import 'package:infinite_list_app/services/services.dart';

class InfiniteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // getCommentsFromAPi();
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (BuildContext buildContext, int index) {
            return ListTile(
              leading: Text('1'),
              title: Text(
                'Hello, how are you',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              isThreeLine: true,
              subtitle: Text(
                'This is the first message',
                style: TextStyle(fontSize: 18),
              ),
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
