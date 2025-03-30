import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final TextEditingController _editingController = TextEditingController();
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _editingController,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  if (GetUtils.isEmail(_editingController.text)) {
                    Get.snackbar("正确", "恭喜你, 完全正确",
                        backgroundColor: Colors.greenAccent);
                  } else {
                    Get.snackbar("邮箱错误", "请输入正确的邮箱",
                        backgroundColor: Colors.pink);
                  }
                },
                child: const Text("验证邮箱")),
            ElevatedButton(
                onPressed: () {
                  if (GetUtils.isPhoneNumber(_editingController.text) && _editingController.text.length==11) {
                    Get.snackbar("正确", "恭喜你, 完全正确",
                        backgroundColor: Colors.greenAccent);
                  } else {
                    Get.snackbar("手机号错误", "请输入正确的手机号",
                        backgroundColor: Colors.pink);
                  }
                },
                child: const Text("验证手机号")),
          ],
        ),
      ),
    );
  }
}
