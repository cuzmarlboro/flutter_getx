import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './person.dart';
import './animal.dart';

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
  // 使用 Rx 和 .obs 来创建响应式变量
  final RxInt _counter = RxInt(0);
  final RxString _username = "zhangsan".obs;
  final RxList _list = ["张三", "李四"].obs;
  final Rx<String> _sex = Rx<String>("男");

  //实例化lei

  var p = Person();

  var a = Animal("xiao mao", 2).obs;

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
            // 使用 Obx 来监听响应式变量
            Obx(() => Text(
                  "${_counter.value}",
                  style: Theme.of(context).textTheme.headlineLarge,
                )),
            const SizedBox(),
            Obx(() {
              return Text(
                _username.value,
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
            const SizedBox(),
            Obx(() {
              return Column(
                children: _list.map((v) {
                  return ListTile(title: Text(v));
                }).toList(),
              );
            }),
            const SizedBox(),
            Obx(() => Text(_sex.value,
                style: Theme.of(context).textTheme.headlineMedium)),
            const SizedBox(),
            Obx(() => Text("${p.username}",
                style: Theme.of(context).textTheme.headlineSmall)),
            const SizedBox(),
            Obx(() => Text(a.value.username,
                style: Theme.of(context).textTheme.headlineSmall))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // 当 value 发生变化时，会重新执行使用该变量的 Obx 方法，而不是重新执行整个 Widget 的 build 方法
          _counter.value++;

          _username.value = "lisi";

          _list.add("王五"); //注意

          p.username.value = p.username.value.toUpperCase();

          a.value = Animal("小狗", 3);
        },
      ),
    );
  }
}
