import 'package:flutter/material.dart';
import 'package:untitled3/bloc/todo_bloc.dart';
import 'package:untitled3/widget/todo_container.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ToDo List'),
          centerTitle: true,
        ),
        body: Provider<TodoBloc>.value(
            value: TodoBloc(),
            child: ToDoContainer()),
      ),
    );
  }
}

