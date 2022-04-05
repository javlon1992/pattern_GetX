import 'package:get/get.dart';
import 'package:patterns_getx/controllers/main_controller.dart';
import 'package:patterns_getx/controllers/payment_controller.dart';
import 'package:patterns_getx/controllers/setting_controller.dart';

class DIService {
  static Future<void> init() async {
    Get.lazyPut<MainController>(() => MainController(), fenix: true);
    Get.lazyPut<PaymentController>(() => PaymentController(), fenix: true);
    Get.lazyPut<SettingController>(() => SettingController(), fenix: true);
  }
}