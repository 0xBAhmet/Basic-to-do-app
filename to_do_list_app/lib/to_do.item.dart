import 'package:flutter/material.dart';
import 'package:to_do_list_app/colors/colorss.dart';
import 'package:to_do_list_app/control.dart';

class to_do_item extends StatefulWidget {
  final ToDo todo;
  final onToDoChange;
  final onDeleteItem;
  const to_do_item(
      {super.key, required this.todo, this.onToDoChange, this.onDeleteItem});

  @override
  State<to_do_item> createState() => _to_do_itemState();
}

class _to_do_itemState extends State<to_do_item> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {
            widget.onToDoChange(widget.todo);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading: Icon(
            widget.todo.isDone
                ? Icons.check_box
                : Icons.check_box_outline_blank,
            color: tdblue,
          ),
          title: Text(
            widget.todo.todoText!,
            style: TextStyle(
                fontSize: 16,
                decoration:
                    widget.todo.isDone ? TextDecoration.lineThrough : null),
          ),
          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 2),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: tdred,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              onPressed: () {
                widget.onDeleteItem(widget.todo.id);
              },
              icon: Icon(Icons.delete),
              iconSize: 18,
              color: Colors.white,
            ),
          ),
        ));
  }
}
