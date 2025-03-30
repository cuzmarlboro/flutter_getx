import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/counter.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
