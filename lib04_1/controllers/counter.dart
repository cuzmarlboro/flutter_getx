/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-30 18:42:27
 * @LastEditTime: 2025-03-30 18:44:48
 * @FilePath: /flutter_getx/lib/controllers/counter.dart
 * @Description: 
 */
import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;

  void inc() {
    counter.value++;
    // Controller 里面修改状态后必须调用 update 方法，才能触发 Obx 的更新
    update();
  }

  void dec() {
    counter.value--;

    update();
  }
}
