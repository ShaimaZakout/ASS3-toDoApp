import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

class TaskWidget extends StatefulWidget {
  Function fun;
  Function remove;
  Task task;
  TaskWidget(this.task, this.fun, this.remove);

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: widget.task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: CheckboxListTile(
              title: Text(widget.task.title),
              value: widget.task.isCompleted,
              onChanged: (v) {
                widget.fun(widget.task);
              },
            ),
          ),
          IconButton(
              onPressed: () {
                widget.remove(widget.task);
              },
              icon: const Icon(Icons.delete))
        ],
      ),
    );
  }
}
