import 'package:get/get.dart';

enum SelectedTab { Home, History, More }

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
