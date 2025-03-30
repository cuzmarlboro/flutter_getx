import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/list.dart';


// import '../user/registerFirst.dart';
class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  //获取List实例
  ListController listController=Get.find<ListController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
        return ListView(
          children: listController.list.map((value){
            return ListTile(title: Text("$value"));
          }).toList(),
        );
    });
  }
}
