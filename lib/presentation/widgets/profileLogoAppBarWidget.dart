import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_manager_project_in_flutter/presentation/utilitites/Colors_App.dart';

PreferredSizeWidget get profileAppBar{
  return AppBar(
    backgroundColor: AppColor.ThemeColor,
    title:Row(
      children: [CircleAvatar(),SizedBox(width: 10,),
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [Text('name',style:TextStyle(fontSize:12 ) ,),SizedBox(width: 10,),Text('email',style:TextStyle(fontSize:12 ),)],)),
        IconButton(onPressed: (){}, icon:Icon(Icons.logout_outlined),)],
    ) ,
  );
}