import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './language.dart';
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
      translations: Messages(), // 你的翻译
      locale: const Locale('zh', 'CN'), // 将会按照此处指定的语言翻译
      fallbackLocale: const Locale('en', 'US'), // 添加一个回调语言选项，以备上面指定的语言翻译不存在
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
            Text('hello'.tr),
            const SizedBox(height: 20),  
            Text('title'.tr),   
             const SizedBox(height: 20),     
            ElevatedButton(onPressed: () {
              var locale = const Locale('zh', 'CN');
              Get.updateLocale(locale);
            }, child: const Text("切换到中文")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              var locale = const Locale('en', 'US');
              Get.updateLocale(locale);
            }, child: const Text("切换到英文")),
          ],
        ),
      ),
    );
  }
}
