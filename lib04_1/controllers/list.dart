import 'package:get/get.dart';

class ListController extends GetxController{
    RxList list=[].obs;

    void add(value){
      list.add(value);
      update();
    }
   
}