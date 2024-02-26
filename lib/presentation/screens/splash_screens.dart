import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager_project_in_flutter/presentation/screens/sign_in_screen.dart';
import 'package:task_manager_project_in_flutter/presentation/utilitites/AssetsPath.dart';

import '../widgets/backGroundWidget.dart';

class Splash_Screens extends StatefulWidget {
  const Splash_Screens({super.key});

  @override
  State<Splash_Screens> createState() => _Splash_ScreensState();
}

class _Splash_ScreensState extends State<Splash_Screens> {

  @override
  void initState() {
  super.initState();
  _movetosignin();
  }
  Future<void>_movetosignin()async{
    await Future.delayed(const Duration( seconds:4 ));
    if(mounted){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>SignInScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('splash screens'),),
      body:backGroundWidget(
        child:Center(child: SvgPicture.asset(AssetsPath.logoSvg,width: 100,fit: BoxFit.scaleDown,)),
      )
    );
  }
}
