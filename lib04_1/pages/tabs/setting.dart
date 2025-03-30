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
  ListController listController=Get.put(ListController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        
          ElevatedButton(onPressed: (){
               listController.add("我是一个列表");
               Get.snackbar("提示", "增加数据成功");
          }, child: const Text("给user list里面增加数据")),          
        ],
      ),
    );
  }
}