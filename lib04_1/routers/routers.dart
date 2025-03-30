import 'package:get/get.dart';
import '../pages/tabs.dart';
import '../pages/shop.dart';
import '../middlewares/shopMiddleware.dart';

class AppPage {
  static final routes = [
    GetPage(name: "/", page: () => const Tabs()),
    GetPage(
        name: "/shop",
        page: () => const ShopPage(),
        middlewares: [ShopMiddleWare()]),
  ];
}
