import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_getx/pages/home1_page.dart';
import 'package:patterns_getx/pages/home2_page.dart';
import 'package:patterns_getx/services/bind_service.dart';
import 'package:patterns_getx/services/di_service.dart';

Future main() async{
  await DIService.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pattern GetX',
      home: Home2Page(),
      //initialBinding: ControllersBinding(),
      // getPages: [
      //   GetPage(
      //     name: MainPage.id,
      //     page: () => MainPage(),
      //     binding: ControllersBinding(),
      //   ),
      // ],
    );
  }
}
