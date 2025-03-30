import 'package:get/get.dart';

import '../controllers/search.dart';

class SearchControllerBinding implements Bindings{
  @override
  void dependencies() {  
    Get.lazyPut<SearchControllerA>(() => SearchControllerA());
  }

}