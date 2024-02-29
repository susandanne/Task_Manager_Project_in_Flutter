import 'package:flutter/material.dart';
import 'package:task_manager_project_in_flutter/presentation/screens/email_verification_screen.dart';
import 'package:task_manager_project_in_flutter/presentation/screens/mainBottomNavigationScreen.dart';
import 'package:task_manager_project_in_flutter/presentation/screens/newTask_screens.dart';
import 'package:task_manager_project_in_flutter/presentation/screens/signup_screen.dart';
import 'package:task_manager_project_in_flutter/presentation/widgets/backGroundWidget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
 final TextEditingController _emailController =TextEditingController();
 final TextEditingController _passwordController =TextEditingController();
 final GlobalKey<FormState>formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: backGroundWidget(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Text(
                    'Get Started With ',
                    style:Theme.of(context).textTheme.titleLarge
                  ),  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(hintText: 'email address'),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'password',
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(width:double.infinity,
                      child:ElevatedButton(onPressed:(){
                        Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>BottomNaviagtion()), (route) => false);
                      }, child: Icon(Icons.icecream_outlined))),
                  SizedBox(height: 16,),
                  TextButton(onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailVerificationScreen()));
                  }, child:Text('forget your password !!!',style: TextStyle(color:Colors.red,fontSize: 24 ),)),
                  SizedBox(height: 16,),
                  Row(mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                    Text('Dont have an Account?',style: TextStyle(color: Colors.red),),
                    TextButton(onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>signUp()));
                    }, child:Text('Sign Up Please',style: TextStyle(color:Colors.amber,fontSize:20 ),)),
                  ],)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
