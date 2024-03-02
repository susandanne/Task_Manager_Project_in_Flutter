import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCardDetails extends StatelessWidget {
  const TaskCardDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink,
      margin:EdgeInsets.symmetric(horizontal: 8,vertical: 5),
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('title',style: TextStyle(fontWeight: FontWeight.bold)),
            Text('description'),
            Text('date'),
            Row(children: [
              Chip(label: Text('kilck new task')),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever_sharp)),
            ],)
          ],
        ),
      ) ,
    );
  }
}