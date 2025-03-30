/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-30 19:13:19
 * @LastEditTime: 2025-03-30 19:16:44
 * @FilePath: /flutter_getx/lib/pages/shop.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/shop.dart';

class ShopPage extends GetView<ShopController> {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text("${controller.counter}")),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.inc();
                },
                child: const Text("shop counter+1"))
          ],
        ),
      ),
    );
  }
}
