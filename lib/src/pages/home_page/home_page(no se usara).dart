import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_bar/src/widgets/custom_navigation_bar/custom_nab_bar_controller.dart';
import 'package:navigation_bar/src/widgets/custom_navigation_bar/custom_navigation_bar.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

// enum _SelectedTab { Home, History, More }

class _HomeState extends State<Home> {
  // _SelectedTab _selectedTab = _SelectedTab.Home;
  // void _handleIndexChanged(int i) {
  //   setState(() {
  //     _selectedTab = _SelectedTab.values[i];
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return GetBuilder<CustomNabBarController>(
        id: "navbar",
        init: CustomNabBarController(),
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text("navigation bar"),
            ),
            bottomNavigationBar: CustomNavigation(
              onTap: _.handleIndexChanged,
              currentIndex: _.selectTab.index,
            ),

            // return CustomNavigation(
            //   onTap: _._handleIndexChanged,
            //   currentIndex: _SelectedTab.values.indexOf(_selectedTab),
            // );

            body: Container(
              child: Column(
                children: [
                  _.selectTab.index == SelectedTab.Home
                      ? Expanded(
                          child: Center(
                            child: Text("Home Page"),
                          ),
                        )
                      : Container(),
                  _.selectTab.index == SelectedTab.History
                      ? Expanded(
                          child: Center(
                            child: Text("History Page"),
                          ),
                        )
                      : Container(),
                  _.selectTab.index == SelectedTab.More
                      ? Expanded(
                          child: Center(
                            child: Text("More Page"),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          );
        });
  }
}
