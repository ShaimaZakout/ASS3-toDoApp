import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/data/tasks_data.dart';
import 'package:state_managment/todo_app/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
    Function remove;
  Function fun;
  AllTasksScreen(this.fun,this.remove);
  @override
  Widget build(BuildContext context) {
     return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList[index],fun,remove);
        });
  }
}
