import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/counter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CounterController counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(()=>Text("${counterController.counter}", style: Theme.of(context).textTheme.headlineMedium)),
          const SizedBox(height: 40),
          ElevatedButton(onPressed: (){
               counterController.inc(); 
          }, child: const Text("计数器加1")),

            const SizedBox(height: 40),
          ElevatedButton(onPressed: (){
              Get.toNamed("/shop");
          }, child: const Text("跳转到shop")),
           ElevatedButton(onPressed: (){
              Get.toNamed("/search");
          }, child: const Text("跳转到search"))
        ],
      ),
    );
  }
}
