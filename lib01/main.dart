/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-28 00:14:06
 * @LastEditTime: 2025-03-28 00:46:29
 * @FilePath: /flutter_getx/lib/main.dart
 * @Description: 01. Getx介绍 、Getx Dialog、主题管理
 */

// 1. Getx 的好处就是可以完全脱离 context 来使用

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // 需要将根的 MaterialApp 改成 GetMaterialApp，才能使用 GetX 的特性
    return const GetMaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // flutter 默认的 dialog
  void _alertDialog(context) async {
    // ignore: unused_local_variable
    var result = await showDialog(
        barrierDismissible: false, // 表示点击灰色背景的时候是否消失弹出框
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("提示信息!"),
            content: const Text("您确定要删除吗"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop("ok");
                  },
                  child: const Text("确定")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop("取消");
                  },
                  child: const Text("取消"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  _alertDialog(context);
                },
                child: const Text("Flutter默认的dialog")),
            ElevatedButton(
                onPressed: () {
                  // Getx 默认的 dialog
                  Get.defaultDialog(
                      title: "提示信息!", // 标题
                      middleText: "您确定要删除吗?", // 内容
                      confirm: ElevatedButton(
                          onPressed: () {
                            // flutter 关闭 dialog 的方法
                            // Navigator.of(context).pop();

                            // GetX 关闭 dialog 的方法
                            Get.back();
                          },
                          child: const Text("确定")),
                      cancel: ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("取消")));
                },
                child: const Text("Getx defaultDialog")),
            ElevatedButton(
                onPressed: () {
                  // GetX 默认的 snackbar，快速弹出提示信息
                  Get.snackbar(
                    "提示?", // 标题
                    "您还有没有登录", // 内容
                    snackPosition: SnackPosition.BOTTOM, // 位置
                    duration: const Duration(seconds: 2), // 显示时间
                  );
                },
                child: const Text("Getx snackbar")),
            ElevatedButton(
                onPressed: () {
                  // GetX 默认的 bottomSheet，快速弹出底部弹窗
                  Get.bottomSheet(Container(
                    color: Get.isDarkMode ? Colors.black26 : Colors.white,
                    height: 120,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined,
                              color: Get.isDarkMode
                                  ? Colors.white
                                  : Colors.black87),
                          onTap: () {
                            //切换主题
                            Get.changeTheme(ThemeData.light());
                            Get.back();
                          },
                          title: Text(
                            "白天模式",
                            style: TextStyle(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black87),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny,
                              color: Get.isDarkMode
                                  ? Colors.white
                                  : Colors.black87),
                          onTap: () {
                            //切换主题
                            Get.changeTheme(ThemeData.dark());
                            Get.back();
                          },
                          title: Text(
                            "夜晚模式",
                            style: TextStyle(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black87),
                          ),
                        )
                      ],
                    ),
                  ));
                },
                child: const Text("Getx bottomSheet切换主题"))
          ],
        ),
      ),
    );
  }
}
