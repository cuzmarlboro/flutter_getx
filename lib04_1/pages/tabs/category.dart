/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-30 18:42:27
 * @LastEditTime: 2025-03-30 18:51:08
 * @FilePath: /flutter_getx/lib/pages/tabs/category.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/counter.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  // 使用 Get.find 方法获取控制器实例
  CounterController counterController = Get.find();
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
                counterController.dec();
              },
              child: const Text("计数器-1"))
        ],
      ),
    );
  }
}
