import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/search.dart';

class SearchPage extends GetView<SearchControllerA> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Obx((){
        return ListView(
          children: controller.hotList.map((value){
            return ListTile(title:Text("$value"));
          }).toList(),
        );
      }),
    );
  }
}