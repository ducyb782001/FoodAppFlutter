import 'package:counter_app/blocks/counter_block.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = context.bloc<CounterBloc>();
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<CounterBloc, int>(
          builder: ((context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Two actions/ events here: ",
                  style: TextStyle(fontSize: 25),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Increment",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.green),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Decrement",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
