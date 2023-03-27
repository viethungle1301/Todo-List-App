import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled3/bloc/event_bloc.dart';

abstract class TaskBloc{
  StreamController<TaskEvent>_eventStreamController =
      StreamController<TaskEvent>();
  Sink<TaskEvent> get event => _eventStreamController.sink;

  TaskBloc(){
    _eventStreamController.stream.listen((event) {
      if(event is! TaskEvent){
        throw Exception('Event khong hop le');
      }
      dispatchEvent(event);
    });
  }
  void dispatchEvent(TaskEvent event);
  @mustCallSuper
  void dispose(){
    _eventStreamController.close();
  }
}