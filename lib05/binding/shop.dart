import 'package:get/get.dart';

import '../controllers/shop.dart';

class ShopControllerBinding implements Bindings{
  @override
  void dependencies() {  
    Get.lazyPut<ShopController>(() => ShopController());
  }

}