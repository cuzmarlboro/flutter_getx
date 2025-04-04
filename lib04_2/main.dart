import 'package:flutter/material.dart';
import './routers/routers.dart';

import 'package:get/get.dart';

import './binding/binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialBinding: AllControllerBinding(), // 全局绑定 GetxController
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
          )),
      initialRoute: "/",
      defaultTransition: Transition.rightToLeft,
      getPages: AppPage.routes,
    );
  }
}
