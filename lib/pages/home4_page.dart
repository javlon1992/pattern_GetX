
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_getx/controllers/home4_controller.dart';
import 'package:patterns_getx/views/item_home4_post.dart';

class Home4Page extends StatefulWidget {
  const Home4Page({Key? key}) : super(key: key);

  @override
  State<Home4Page> createState() => _Home4PageState();
}

class _Home4PageState extends State<Home4Page> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<Home4Controller>().apiPostList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pattern - GetX"),
        ),
        body: GetX<Home4Controller>(
          init: Home4Controller(),
          builder: (_controller){
            return Stack(
              children: [
                ListView.builder(
                  itemCount: _controller.items.length,
                  itemBuilder: (ctx, index) {
                    return itemHome4Post(_controller, _controller.items[index]);
                  },
                ),
                _controller.isLoading.value
                    ? Center(
                  child: CircularProgressIndicator(),
                )
                    : SizedBox.shrink(),
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
