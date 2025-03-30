/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-30 18:42:27
 * @LastEditTime: 2025-03-30 18:49:43
 * @FilePath: /flutter_getx/lib/pages/tabs/home.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/counter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 使用 Get.put 方法将创建控制器实例
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text("${counterController.counter}",
              style: Theme.of(context).textTheme.headlineMedium)),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              counterController.inc();
            },
            child: const Text("计数器加1"),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/shop");
              },
              child: const Text("跳转到shop"),
        ],
      ),
    );
  }
}
