/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-30 19:13:19
 * @LastEditTime: 2025-03-31 18:37:30
 * @FilePath: /flutter_getx/lib05/routers/routers.dart
 * @Description: 
 */
import 'package:get/get.dart';
import '../pages/tabs.dart';
import '../pages/shop.dart';
import '../pages/search.dart';
import '../binding/shop.dart';
import '../binding/search.dart';
import '../middlewares/shopMiddleware.dart';

class AppPage {
  static final routes = [
    GetPage(
      name: "/",
      page: () => const Tabs(),
    ),
    GetPage(
      name: "/shop",
      page: () => const ShopPage(),
      binding: ShopControllerBinding(), // 局部绑定，自动初始化控制器实例
      middlewares: [ShopMiddleWare()],
    ),
    GetPage(
      name: "/search",
      binding: SearchControllerBinding(), // 局部绑定，自动初始化控制器实例
      page: () => const SearchPage(),
    ),
  ];
}
