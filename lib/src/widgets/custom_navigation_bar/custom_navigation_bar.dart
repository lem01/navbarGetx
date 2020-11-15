import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_bar/src/pages/home_page/home.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class CustomNavigation extends StatefulWidget {
  // CustomNavigation({Key key}) : super(key: key);
  final dynamic Function(int) onTap;
  final int currentIndex;

  const CustomNavigation({
    Key key,
    @required this.onTap(int i),
    @required this.currentIndex,
  }) : super(key: key);

  @override
  _CustomNavigationState createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Container(
      height: kToolbarHeight,
      // color: Colors.blueGrey,
      child: SalomonBottomBar(
        // currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        // onTap: _handleIndexChanged,
        currentIndex: widget.currentIndex,
        onTap: widget.onTap,
        items: [
          SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("home"),
              selectedColor: Colors.blueAccent),
          SalomonBottomBarItem(
              icon: Icon(Icons.history),
              title: Text("History"),
              selectedColor: Colors.redAccent),
          SalomonBottomBarItem(
              icon: Icon(Icons.more_horiz),
              title: Text("More"),
              selectedColor: Colors.pinkAccent)
        ],
      ),
    );
  }
}
// class _nameState extends State<name> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: kToolbarHeight,
//       child: Row(
//         children: [
//           Column(
//             children: [
//               IconButton(
//                 icon: Icon(
//                   Icons.home,
//                 ),
//                 onPressed: () {},
//               ),
//               Text("Home"),
//             ],
//           ),
//           Column(
//             children: [
//               IconButton(
//                 icon: Icon(
//                   Icons.history,
//                 ),
//                 onPressed: () {},
//               ),
//               Text("History"),
//             ],
//           ),
//           Column(
//             children: [
//               IconButton(
//                 icon: Icon(
//                   Icons.more,
//                 ),
//                 onPressed: () {},
//               ),
//               Text("More"),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
