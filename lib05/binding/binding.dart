import 'package:get/get.dart';

import '../controllers/counter.dart';
import '../controllers/list.dart';
class AllControllerBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut<CounterController>(() => CounterController());
    Get.lazyPut<ListController>(() => ListController());
  }

}