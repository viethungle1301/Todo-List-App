import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/bloc/event_bloc.dart';
import 'package:untitled3/bloc/todo_bloc.dart';
import 'package:untitled3/model/model.dart';
class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoBloc>(
      builder: (context, bloc,child) => StreamBuilder<List<Todo>>(
        stream: bloc.ToDoList,
      builder: (content, snapshot) {
          switch(snapshot.connectionState){
            case ConnectionState.active:
       return ListView.builder(
        itemCount: snapshot.data!.length,
          itemBuilder: (context, index){
        return ListTile(
          title: Text(snapshot.data![index].name),
          trailing: GestureDetector(
            onTap: (){
              bloc.event.add(DeleteTaskEvent(snapshot.data![index]));
            },
            child: Icon(Icons.delete_outline,color: Colors.red,),
          ),
        );
      });
            case ConnectionState.none:
            default:
              return Center(
                child: Container(
                  width: 70,
                  height: 70,
                  child: CircularProgressIndicator(),
                ),
              );
          }
        }
    ));
  }
}
