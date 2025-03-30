/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-28 00:46:50
 * @LastEditTime: 2025-03-30 18:41:59
 * @FilePath: /flutter_getx/lib02/main.dart
 * @Description: 路由管理 路由跳转 路由动画 中间件
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routers/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true, // 标题居中
        ),
      ),
      initialRoute: "/", // 初始路由
      defaultTransition: Transition.rightToLeft, // 默认过渡动画
      // onGenerateRoute: onGenerateRoute, // flutter 路由配置方法
      getPages: AppPage.routes, // getx 路由配置方法
    );
  }
}
