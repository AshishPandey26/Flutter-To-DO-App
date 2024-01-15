import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_flutter/adapters.dart';

class ToDoDatabase{

  List toDoList = [];

  //reference the box
  final _myBox = Hive.box('mybox');

  // run this methodd if first time opening the app
  void createInitialData(){
    toDoList=[
      ["make Tutorila", false],
      ["Do Exercise", false],
    ];
  }
  //load data from the database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);
  }
}