import 'package:flutter/material.dart';
import 'package:get/get.dart';
class RegisterSecondPage extends StatefulWidget {
  const RegisterSecondPage({super.key});

  @override
  State<RegisterSecondPage> createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("注册第二步")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("注册第二步"),
              const SizedBox(height: 40),
              ElevatedButton(onPressed: () {
              
               Get.toNamed("/registerThird");
              
              }, child: const Text("下一步"))
            ],
          ),
        ));
  }
}
