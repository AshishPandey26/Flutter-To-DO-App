import 'package:hive_flutter/adapters.dart';

class ToDoDatabase{

  List toDoList = [];

  //reference the box
  final _myBox = Hive.openBox('mybox');

}