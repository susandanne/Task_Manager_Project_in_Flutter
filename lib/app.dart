import 'package:flutter/material.dart';
import 'package:task_manager_project_in_flutter/presentation/screens/splash_screens.dart';
import 'package:task_manager_project_in_flutter/presentation/utilitites/Colors_App.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:'task manager',
      home: Splash_Screens(),
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
              fillColor: Colors.grey,
              filled: true,
              contentPadding: EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8),
              )
          ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
            backgroundColor:AppColor.ThemeColor,
            foregroundColor: Colors.green,

          )
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.red,
            // backgroundColor: Colors.blue
          )
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.amberAccent)
        )
        )
    );
  }
}