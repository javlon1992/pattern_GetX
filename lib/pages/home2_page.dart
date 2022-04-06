
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_getx/controllers/home2_controller.dart';
import 'package:patterns_getx/views/item_home2_post.dart';

class Home2Page extends StatelessWidget {
  static const String id = "/home2_page";
  const Home2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pattern - GetX"),
        ),
        body: Obx(() => Stack(
            children: [
              ListView.builder(
                itemCount: Get.find<Home2Controller>().items.length,
                itemBuilder: (ctx, index) {
                  return itemHome2Post(Get.find<Home2Controller>(), Get.find<Home2Controller>().items[index]);
                },
              ),
              Get.find<Home2Controller>().isLoading.value ? const Center(child: CircularProgressIndicator(),) : const SizedBox.shrink(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          onPressed: () {
            // Respond to button press
          },
          child: Icon(Icons.add),
        ));
  }
}
