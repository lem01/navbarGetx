import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("hometab");
    return Container(
      child: Column(
        children: [
          Center(
            child: Text("home page"),
          ),
          // CupertinoButton(
          //   child: Text("preciona"),
          //   onPressed: () {},
          // )
        ],
      ),
    );
  }
}
