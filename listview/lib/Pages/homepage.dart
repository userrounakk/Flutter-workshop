import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var toDoItems = [
    {
      'id': 1,
      'title': 'Task One',
      'description': 'This is Task One',
    },
    {
      'id': 2,
      'title': 'Task Two',
      'description': 'This is Task Two',
    },
    {
      'id': 3,
      'title': 'Task Three',
      'description': 'This is Task Three',
    },
    {
      'id': 4,
      'title': 'Task Four',
      'description': 'This is Task Four',
    },
    {
      'id': 5,
      'title': 'Task Five',
      'description': 'This is Task Five',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: toDoItems.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(toDoItems[index]['id'].toString()),
                ),
                title: Text(toDoItems[index]['title'].toString()),
                subtitle: Text(toDoItems[index]['description'].toString()),
              );
            }),
      ),
    );
  }
}
