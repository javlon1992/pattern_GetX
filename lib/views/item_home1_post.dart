import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:patterns_getx/controllers/home1_controller.dart';
import 'package:patterns_getx/model/post_model.dart';

Widget itemHome1Post(Home1Controller controller,Post post) {
  return Slidable(
    startActionPane: ActionPane(
      motion: const ScrollMotion(),
      extentRatio: 1/4,
      children: [
        SlidableAction(
          onPressed: (BuildContext context) {},
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          icon: Icons.edit,
          label: 'Edit',
        ),
      ],
    ),
    endActionPane: ActionPane(
      motion: const ScrollMotion(),
      extentRatio: 1/4,
      children: [
        SlidableAction(
          backgroundColor: const Color(0xFFFE4A49),
          foregroundColor: Colors.white,
          icon: Icons.delete,
          label: 'Delete',
          onPressed: (BuildContext context) {
            controller.apiPostDelete(post);
          },
        ),
      ],
    ),
    child: Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            post.title!.toUpperCase(),
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(post.body!),
        ],
      ),
    ),
  );
}
