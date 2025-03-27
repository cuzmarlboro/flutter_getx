/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-28 01:03:04
 * @LastEditTime: 2025-03-28 01:15:52
 * @FilePath: /flutter_getx/lib/pages/tabs/user.dart
 * @Description: 用户页面
 */
import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/user/registerFirst.dart';
import 'package:get/get.dart';

// import '../user/registerFirst.dart';
class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                // getx 跳转登录页面（命名路由）
                Get.toNamed("/login");
              },
              child: const Text("登录")),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                // getx 跳转注册第一步（命名路由）
                Get.toNamed("/registerFirst");

                // 跳转注册第一步（命名路由）不允许返回
                // Get.off(const RegisterFirstPage());
              },
              child: const Text("注册")),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                // getx 跳转 shop 页面（命名路由）传参
                Get.toNamed("/shop", arguments: {"id": 3456});
              },
              child: const Text("shop路由传值-中间件演示"))
        ],
      ),
    );
  }
}
