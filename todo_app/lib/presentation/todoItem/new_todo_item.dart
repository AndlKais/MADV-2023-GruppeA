import 'package:todo_app/infrastructure/todo_item.dart';
import 'package:flutter/material.dart';

class NewTodoItem extends StatelessWidget {
  final TodoItem newTodoItem;
  final Function(TodoItem) onPressed;

  const NewTodoItem({super.key, required this.newTodoItem, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        onTap: () => onPressed(newTodoItem),
          //_editTodoItem(index);

        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                newTodoItem.title,
              ),
              Text(
                'Finish Date: ${newTodoItem.finishDate}',
                style: const TextStyle(color: Colors.black),
              ),
              IconButton(
                onPressed: () {
// Add the delete functionality here
/* _deleteTodoItem(index);*/
                },
                icon: const Icon(Icons.delete),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}