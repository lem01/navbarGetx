import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_bar/src/pages/tabs/home_tab/home_tab_controller.dart';

class HomeTab extends StatelessWidget {
  // final int counter;
  // final VoidCallback counterPress;
  // const HomeTab({Key key, @required this.counter, @required this.counterPress})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("build hometab");
    // return Container(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Center(
    //         child: Text("home Tab page"),
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       GetBuilder<HomeTabController>(
    //           id: "counter",
    //           builder: (homeTab) {
    //             return Text(homeTab.counter.toString());
    //           }),
    //       // GetBuilder<HomeTabController>(
    //       //     id: "counter",
    //       //     builder: (_) {
    //       //       return Text(_.counter.toString());
    //       //     }),
    //       // CupertinoButton(
    //       //   child: Text("preciona"),
    //       //   onPressed: () {},
    //       // )
    //       Row(
    //         children: [
    //           FlatButton(
    //             color: Colors.blue,
    //             child: Icon(Icons.add),
    //             onPressed: () {
    //               homeTab.increment();
    //             },
    //           ),
    //           SizedBox(
    //             width: 10,
    //           ),
    //           FlatButton(
    //             color: Colors.blue,
    //             child: Icon(Icons.remove),
    //             onPressed: () {
    //               homeTab.decrement();
    //             },
    //           ),
    //         ],
    //       )
    //     ],
    //   ),
    // );

    return GetBuilder<HomeTabController>(
        id: "counter",
        builder: (homeTab) {
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
                Text(homeTab.counter.toString()),
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
