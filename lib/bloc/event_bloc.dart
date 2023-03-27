import 'dart:async';

import 'package:untitled3/model/model.dart';
class TaskEvent{}

class AddTaskEvent extends TaskEvent{
  String name;
  AddTaskEvent(this.name);
}

class DeleteTaskEvent extends TaskEvent{
Todo todo;
DeleteTaskEvent(this.todo);
}