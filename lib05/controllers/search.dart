/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-30 19:13:19
 * @LastEditTime: 2025-03-30 19:40:37
 * @FilePath: /flutter_getx/lib05/controllers/search.dart
 * @Description: 
 */
import 'package:get/get.dart';

class SearchControllerA extends GetxController {
  RxList hotList = [].obs;

  void onInit() {
    print("请求接口数据");
    getHotList();
    super.onInit();
  }

  @override
  void onClose() {
    print("onClose");
    super.onClose();
  }

  void getHotList() {
    hotList.add("我是一个模拟的数据");
    update();
  }
}
