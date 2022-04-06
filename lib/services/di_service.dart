import 'package:get/get.dart';
import 'package:patterns_getx/controllers/home1_controller.dart';
import 'package:patterns_getx/controllers/home2_controller.dart';
import 'package:patterns_getx/controllers/home3_controller.dart';
import 'package:patterns_getx/controllers/home4_controller.dart';

class DIService {
  static Future<void> init() async {
    Get.lazyPut<Home2Controller>(() => Home2Controller(), fenix: true);
    Get.lazyPut<Home3Controller>(() => Home3Controller(), fenix: true);
    Get.lazyPut<Home4Controller>(() => Home4Controller(), fenix: true);
    Get.lazyPut<Home1Controller>(() => Home1Controller(), fenix: true);
  }
}