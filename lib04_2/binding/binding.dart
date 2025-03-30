/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-30 19:03:20
 * @LastEditTime: 2025-03-30 19:05:41
 * @FilePath: /flutter_getx/lib/binding/binding.dart
 * @Description: 
 */
import 'package:get/get.dart';

import '../controllers/counter.dart';
import '../controllers/list.dart';

class AllControllerBinding implements Bindings {
  // 全局绑定 GetxController ，重写 Bindings 的 dependencies 方法
  // Get.lazyPut 和 Get.put 的区别：
  // 1. Get.lazyPut 是延迟初始化，只有在需要的时候才会初始化，
  // 2. Get.put 是立即初始化，在页面加载的时候就会初始化
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut<CounterController>(() => CounterController());
    Get.lazyPut<ListController>(() => ListController());
  }
}
