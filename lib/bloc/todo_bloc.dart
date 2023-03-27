import 'dart:async';
import 'dart:math';
import 'package:untitled3/bloc/bloc_consume.dart';
import 'package:untitled3/bloc/event_bloc.dart';
import 'package:untitled3/model/model.dart';
import 'package:untitled3/widget/todo_list.dart';

class TodoBloc extends TaskBloc{
  StreamController<List<Todo>> _todoListStreamController =
      StreamController<List<Todo>>();
  Stream<List<Todo>> get ToDoList => _todoListStreamController.stream;
  var _randomInt = Random();
  List<Todo> _todoList = <Todo>[];

_addTodo(Todo todo){
  _todoList.add(todo);
  _todoListStreamController.sink.add(_todoList);
}
_deleteTodo(Todo todo){
  _todoList.remove(todo);
  _todoListStreamController.sink.add(_todoList);
}

  @override
  void dispatchEvent(TaskEvent event){
    if (event is AddTaskEvent){
      Todo todo = Todo(id: _randomInt.nextInt(10000),name: event.name);
      _addTodo(todo);

    }else if(event is DeleteTaskEvent){
      _deleteTodo(event.todo);

    }
  }
  @override
  void dispose(){
    super.dispose();
    _todoListStreamController.close();
  }
}