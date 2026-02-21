import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class ToDoCard extends StatefulWidget {
  String title;
  bool isDone;
  Function onTap;
  Function delete;
  
  ToDoCard({
    super.key,
    required this.title,
    required this.isDone,
    required this.onTap,
    required this.delete,
  });

  @override

  State<ToDoCard> createState() => _ToDoCardState();
}
 class _ToDoCardState extends State<ToDoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        onTap: () => widget.onTap(),
        title: Text(widget.title),
        leading: widget.isDone
      ? Icon(Icons.check_circle, color: Colors.green)
      : Icon(Icons.circle_outlined, color: Colors.white),
      trailing: IconButton(
        icon: Icon(Icons.delete, color: Colors.red),
        onPressed: () => widget.delete(),
      ),
    ),
    );
    }
 }