import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_bar/src/pages/tabs/history_tab/history_tab.dart';
import 'package:navigation_bar/src/pages/tabs/home_tab/home_tab.dart';
import 'package:navigation_bar/src/pages/tabs/more_tab/more_tab.dart';
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
                  //   if (_.selectTab == SelectedTab.Home) HomeTab(),
                  // if (_.selectTab == SelectedTab.History) HistoryTab(),
                  // if (_.selectTab == SelectedTab.More) MoreTab(),
                  _.selectTab == SelectedTab.Home ? HomeTab() : Container(),
                  _.selectTab == SelectedTab.History
                      ? HistoryTab()
                      : Container(),
                  _.selectTab == SelectedTab.More ? MoreTab() : Container(),
                ],
              ),
            ),
          );
        });
  }
}
