
import 'package:get/get.dart';
import 'package:patterns_getx/controllers/home1_controller.dart';
import 'package:patterns_getx/controllers/home2_controller.dart';
import 'package:patterns_getx/controllers/home3_controller.dart';
import 'package:patterns_getx/controllers/home4_controller.dart';

class ControllersBinding implements Bindings{

  @override
  void dependencies (){
    Get.put<Home2Controller>(Home2Controller());
    Get.put<Home3Controller>(Home3Controller());
    Get.put<Home4Controller>(Home4Controller());
    Get.put<Home1Controller>(Home1Controller());
  }
}