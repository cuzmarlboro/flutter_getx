/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-30 19:40:33
 * @LastEditTime: 2025-03-30 19:43:11
 * @FilePath: /flutter_getx/lib/language.dart
 * @Description: 
 */
import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'zh_CN': {
          'hello': '你好 世界',
          'title': '标题',
        },
        'en_US': {
          'hello': 'Hallo Welt',
          'title': 'title',
        }
      };
}
