import 'package:get/get.dart';

class HomeController extends GetxController {
  void changeLove(RxBool isActive) {
    isActive.value = !isActive.value;
  }
}
