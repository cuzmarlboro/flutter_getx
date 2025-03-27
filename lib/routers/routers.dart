/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-28 01:02:49
 * @LastEditTime: 2025-03-28 01:22:37
 * @FilePath: /flutter_getx/lib/routers/routers.dart
 * @Description: 路由配置
 */
import 'package:get/get.dart';
import '../pages/tabs.dart';
import '../pages/shop.dart';
import '../pages/user/login.dart';
import '../pages/user/registerFirst.dart';
import '../pages/user/registerSecond.dart';
import '../pages/user/registerThird.dart';
import '../middlewares/shopMiddleware.dart';

class AppPage {
  static final routes = [
    GetPage(name: "/", page: () => const Tabs()),
    GetPage(
      name: "/shop",
      page: () => const ShopPage(),
      middlewares: [ShopMiddleWare()],
    ),
    GetPage(name: "/login", page: () => const LoginPage()),
    GetPage(
      name: "/registerFirst",
      page: () => const RegisterFirstPage(),
      // transition: Transition.fade, // 过渡动画，弹窗式动画 Transition.fade 淡入淡出
      transition: Transition.rightToLeftWithFade, // 过渡动画，从右到左，淡入淡出
    ),
    GetPage(name: "/registerSecond", page: () => const RegisterSecondPage()),
    GetPage(name: "/registerThird", page: () => const RegisterThirdPage()),
  ];
}
