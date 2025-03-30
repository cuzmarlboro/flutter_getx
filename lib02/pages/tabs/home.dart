/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-28 01:03:04
 * @LastEditTime: 2025-03-28 01:13:26
 * @FilePath: /flutter_getx/lib/pages/tabs/home.dart
 * @Description: 首页页面
 */
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("首页组件"),
    );
  }
}
