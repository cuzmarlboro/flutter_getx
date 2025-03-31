/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-30 19:13:19
 * @LastEditTime: 2025-03-31 18:42:57
 * @FilePath: /flutter_getx/lib05/pages/tabs/setting.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/list.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  //实例化listController
  ListController listController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.snackbar(
                "提示",
                "增加数据成功",
                duration: const Duration(seconds: 1),
              );
              listController.add("我是一个列表");
            },
            child: const Text("给user list里面增加数据"),
          ),
        ],
      ),
    );
  }
}
