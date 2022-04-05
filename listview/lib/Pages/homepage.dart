import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var toDoItems = [
    {
      'title': 'Task One',
      'description': 'This is Task One',
    },
    {
      'title': 'Task Two',
      'description': 'This is Task Two',
    },
    {
      'title': 'Task Three',
      'description': 'This is Task Three',
    },
    {
      'title': 'Task Four',
      'description': 'This is Task Four',
    },
    {
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
                leading: const Icon(Icons.add_circle),
                title: Text(toDoItems[index]['title'].toString()),
                subtitle: Text(toDoItems[index]['description'].toString()),
              );
            }),
      ),
    );
  }
}
