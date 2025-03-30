import 'package:get/get.dart';

class ShopController extends GetxController {
  RxInt counter = 10.obs;

  void onInit() {
    print("onInit");
    super.onInit();
  }

  @override
  void onReady() {
    print("onReady");
    super.onReady();
  }

  @override
  void onClose() {
    print("onClose");
    super.onClose();
  }

  void inc() {
    counter.value++;
    update();
  }
}
