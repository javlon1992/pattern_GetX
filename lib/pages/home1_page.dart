import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_getx/controllers/home1_controller.dart';
import 'package:patterns_getx/views/item_home1_post.dart';

class Home1Page extends StatelessWidget {
  static const String id = "/home1_page";
  Home1Page({Key? key}) : super(key: key);

  final _controller = Get.put(Home1Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("GetX"),
        ),
        body: Obx(() => Stack(
              children: [
                ListView.builder(
                  itemCount: _controller.items.length,
                  itemBuilder: (ctx, index) {
                    return itemHome1Post(_controller, _controller.items[index]);
                  },
                ),
                _controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : const SizedBox.shrink(),
              ],
            )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          onPressed: () {},
          child: const Icon(Icons.add),
        ));
  }
}
