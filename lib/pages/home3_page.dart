
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_getx/controllers/home3_controller.dart';
import 'package:patterns_getx/views/item_home3_post.dart';

class Home3Page extends StatefulWidget {
  const Home3Page({Key? key}) : super(key: key);

  @override
  State<Home3Page> createState() => _Home3PageState();
}

class _Home3PageState extends State<Home3Page> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<Home3Controller>().apiPostList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pattern - GetX"),
        ),
        body: GetBuilder<Home3Controller>(
          init: Home3Controller(),
          builder: (_controller) {
            return Stack(
              children: [
                ListView.builder(
                  itemCount: _controller.items.length,
                  itemBuilder: (ctx, index) {
                    return itemHome3Post(
                        _controller, _controller.items[index]);
                  },
                ),
                _controller.isLoading ? const Center(child: CircularProgressIndicator(),) : const SizedBox.shrink(),
              ],
            );
          },
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
