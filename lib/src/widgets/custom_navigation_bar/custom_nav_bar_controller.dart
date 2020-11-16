import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

enum SelectedTab { Home, History, More }

////////////////esta clase me serbira para crear guardar las tabs pages
// class AllTabPages {
//   final int currentPage;
//   final List<Widget> children;

//   AllTabPages({@required this.currentPage, @required this.children})
//       : assert(children != null && children.length >= 0);
// }

///////
class CustomNabBarController extends GetxController {
  SelectedTab _selectTab = SelectedTab.Home;

  SelectedTab get selectTab => _selectTab;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  handleIndexChanged(int i) {
    _selectTab = SelectedTab.values[i];
    update(["navbar"]);
  }
}
