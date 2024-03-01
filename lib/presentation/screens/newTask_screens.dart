import 'package:flutter/material.dart';
import 'package:task_manager_project_in_flutter/presentation/widgets/backGroundWidget.dart';
import 'package:task_manager_project_in_flutter/presentation/widgets/profileLogoAppBarWidget.dart';

import '../widgets/taskCardCounter.dart';

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
          children: [
            TaskCounterWidget
          ],
        ) ,
      ),
    );
  }
  Widget get TaskCounterWidget{
    return SizedBox(height: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder:(context,index){
              return CardTask(amount: 18, title: 'conte',);
            }, separatorBuilder: (_,__){
              return SizedBox(width: 8,);
            }),
      ),
    );

  }
}


