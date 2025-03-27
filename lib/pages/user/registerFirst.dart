/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-28 01:03:04
 * @LastEditTime: 2025-03-28 01:13:57
 * @FilePath: /flutter_getx/lib/pages/user/registerFirst.dart
 * @Description: 注册第一步
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterFirstPage extends StatefulWidget {
  const RegisterFirstPage({super.key});

  @override
  State<RegisterFirstPage> createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("注册第一步")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("注册第一步"),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // getx 跳转注册第二步（命名路由）
                Get.toNamed("/registerSecond");
              },
              child: const Text("下一步"),
            ),
          ],
        ),
      ),
    );
  }
}
