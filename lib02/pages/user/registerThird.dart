/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-28 01:03:04
 * @LastEditTime: 2025-03-28 01:10:44
 * @FilePath: /flutter_getx/lib/pages/user/registerThird.dart
 * @Description: 注册第三步
 */
import 'package:flutter/material.dart';
import '../tabs.dart';
import 'package:get/get.dart';

class RegisterThirdPage extends StatefulWidget {
  const RegisterThirdPage({super.key});

  @override
  State<RegisterThirdPage> createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("注册第三步")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("注册第三步"),
            const SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  // flutter 返回到根页面
                  // Navigator.of(context).pushAndRemoveUntil(
                  //   MaterialPageRoute(builder: (BuildContext context) {
                  //       return const Tabs(index: 4);
                  //    })
                  //   , (route) => false);

                  // getx 返回到根页面（也就是 tabbar 第4个页面）
                  Get.offAll(const Tabs(index: 4));
                },
                child: const Text("完成注册"))
          ],
        ),
      ),
    );
  }
}
