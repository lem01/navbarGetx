import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_bar/src/pages/tabs/home_tab/home_tab_controller.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("build hometab");

    return GetBuilder<HomeTabController>(builder: (homeTab) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("home Tab page"),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() => Text(homeTab.counter.toString())),
            Row(
              children: [
                FlatButton(
                  color: Colors.blue,
                  child: Icon(Icons.add),
                  onPressed: () {
                    homeTab.increment();
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Icon(Icons.remove),
                  onPressed: () {
                    homeTab.decrement();
                  },
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
