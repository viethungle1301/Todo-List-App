import 'package:flutter/material.dart';
import 'package:untitled3/widget/todo_list.dart';
import 'builder_header.dart';

class ToDoContainer extends StatelessWidget {
  const ToDoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        children: [
          BuilderHeader(),
          Expanded(child: ToDoList()),
        ],
      ),
    );
  }
}

