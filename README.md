# QA

1. StatelessWidget 和 StatefulWidget？ 的区别？
   - `StatelessWidget` 是无状态的 widget，不需要保存任何可以改变的数据或状态，只能接收外部数据并显示静态内容。
   - `StatefulWidget` 是有状态的 widget，需要使用 `State` 类来保存其状态，并在状态改变时通过调用 `setState` 方法触发重建
2. 为什么使用了 GetX 的响应式变量的 widget 继承的是 StatelessWidget 而不是 StatefulWidget？
   - `GetX` 通过 `Rx` 和 `Obx`，可以做到当响应式变量变化的时候，相关的 UI 部分会自动重建，无需手动管理状态或调用 `setState`，也就是说 `GetX` 已经处理了状态变化的监听和通知机制，不需要使用 `StatefulWidget` 来保存和管理状态
3. 什么是依赖注入？
   - 依赖其实指的就是在开发中使用的实例，而依赖注入是一种用于管理实例依赖生命周期和访问的机制，通过依赖注入，可以实现松耦合和更好的模块化设计
4. GetX 如何实现依赖注入？
   - 首先需要注意的一点是 `Dart` 创建实例是不用 `new` 的，和 `JavaScript` 不一样
   - `GetX` 常用的依赖注入方式有两种，第一种是使用 `Get.put()` 立即实例化并注入依赖对象；第二种是使用 `Get.lazyPut` 延迟实例化依赖对象，只有在第一次使用时才会实例化并注入对象

```Dart
// 立即实例化并注入依赖对象
// 方法1
final counterController = Get.put<CounterController>(CounterController());
// 方法2
CounterController counterController = Get.put(CounterController());
```

5. GetX 中 Bindings 类在依赖注入中有什么作用？

   - **集中管理依赖** `Bindings` 类允许你在一个地方集中管理所有的依赖关系，这样可以减少在不同文件中重复注册依赖的麻烦。通过 Bindings 类，你可以一次性注册多个依赖，这使得代码更加模块化和易于维护。

   - **延迟加载依赖** 通过使用 `Get.lazyPut` 方法，`Bindings` 类可以延迟加载依赖对象，这意味着只有在第一次需要使用该依赖对象时才会实例化它。这有助于节省资源和提高应用性能。

   - **简化代码** 使用 `Bindings` 类，可以减少手动注入和查找依赖的代码，使控制器和其他依赖的使用更加简洁。

6. GetX 如何进行全局依赖注入？

   - 在根 `GetMaterialApp` 的 `initialBinding` 属性中指定一个管理全局依赖的 `Bindings` 类，（如 `AllControllerBinding`），这样被注入依赖对象就可以在全局任何地方通过 `Get.find()` 找到了

7. 为什么每次继承 Bindings 类都要重写 dependencies 方法？

   - `dependencies` 方法用于注册和注入所有需要的依赖对象。通过在这个方法中调用 `Get.put`、`Get.lazyPut`、`Get.putAsync` 等方法，可以将依赖对象注入到**依赖管理器**中。

8. dependencies 方法在什么时候会被执行？

   - 如果这个 `Bindings` 类被指定在 `GetMaterialApp` 的 `initialBinding` 属性（也就是**全局绑定**），那么 `dependencies` 方法将在应用启动时执行。这样可以确保在应用启动时就初始化必要的依赖对象

   - 如果这个 `Bindings` 类被指定在某个路由的 `binding` 属性（也就是**局部绑定**），那么 `dependencies` 方法会在导航到该页面时执行，这确保了在进入该页面之前，页面所需的依赖对象已经被初始化
