import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/bloc/event_bloc.dart';
import 'package:untitled3/bloc/todo_bloc.dart';
class BuilderHeader extends StatelessWidget {
  const BuilderHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var txtTodoController = TextEditingController();
    var bloc = Provider.of<TodoBloc>(context);
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: txtTodoController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Add Task'
            ),
          ),
        ),
        SizedBox(width: 10,),
        ElevatedButton.icon(
            onPressed: () {
              bloc.event.add(AddTaskEvent(txtTodoController.text));
            },
            icon: Icon(Icons.add),
            label: Text('add task'))
      ],
    );
  }
}

