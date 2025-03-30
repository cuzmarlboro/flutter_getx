/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-28 01:02:57
 * @LastEditTime: 2025-03-28 01:28:34
 * @FilePath: /flutter_getx/lib/middlewares/shopMiddleware.dart
 * @Description: 路由跳转中间件
 */
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

class ShopMiddleWare extends GetMiddleware {
  // 重写 redirect 方法，用于在路由跳转时进行一些操作
  @override
  RouteSettings? redirect(String? route) {
    print("-------");
    print(route);
    // return null;  //不做任何操作

    //没有权限跳转到登录页面
    return const RouteSettings(name: "/login", arguments: {});
  }
}
