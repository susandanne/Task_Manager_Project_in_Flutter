import 'package:flutter/material.dart';
import 'package:task_manager_project_in_flutter/presentation/widgets/backGroundWidget.dart';
import 'package:task_manager_project_in_flutter/presentation/widgets/profileLogoAppBarWidget.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:profileAppBar,
      body:backGroundWidget(
        child:Column(
          children: [],
        ) ,
      ),
    );
  }
}
