import 'package:get/get.dart';

class HomeTabController extends GetxController {
  int _counter = 0;
  int get counter => _counter;

  void increment() {
    _counter++;
    update(["counter"]);
  }

  void decrement() {
    _counter--;
    update(["counter"]);
  }
}
