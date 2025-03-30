import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter.dart';
class ShopPage extends StatefulWidget {
 //接收命名路由跳转传值
 
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //获取计数器实例
  CounterController counterController = Get.find();
  @override
  void initState() {   
    super.initState();  
    print(Get.arguments);  //获取上个页面的传值  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("shop"),
      ),
      body: Center(
        child:  Text("${counterController.counter}",style: Theme.of(context).textTheme.headlineLarge),
      ),
    );
  }
}