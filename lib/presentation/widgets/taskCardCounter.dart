import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTask extends StatelessWidget {
  const CardTask({
    super.key, required this.amount, required this.title,
  });
  final int amount;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [Text('$amount',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),Text(title,style: TextStyle(color: Colors.amber,fontWeight: FontWeight.w300),)],
        ),
      ),
    );
  }
}