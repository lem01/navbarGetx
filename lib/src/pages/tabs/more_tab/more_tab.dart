import 'package:flutter/material.dart';

class MoreTab extends StatelessWidget {
  const MoreTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("More tab");
    return Container(
      child: Center(
        child: Text("More page"),
      ),
    );
  }
}
