import 'package:get/get.dart';

class HomeTabController extends GetxController {
  RxInt _counter = 0.obs;
  RxInt get counter => _counter;

  void increment() {
    _counter.value += 1;
    // update(["counter"]);
  }

  void decrement() {
    if (_counter.value > 0) _counter.value -= 1;
    // update(["counter"]);
  }
}
