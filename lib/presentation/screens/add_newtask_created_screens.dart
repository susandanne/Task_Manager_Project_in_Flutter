import 'package:flutter/material.dart';
import 'package:task_manager_project_in_flutter/presentation/widgets/backGroundWidget.dart';
import 'package:task_manager_project_in_flutter/presentation/widgets/profileLogoAppBarWidget.dart';

class AddNewTaskCreated extends StatefulWidget {
  const AddNewTaskCreated({super.key});

  @override
  State<AddNewTaskCreated> createState() => _AddNewTaskCreatedState();
}

class _AddNewTaskCreatedState extends State<AddNewTaskCreated> {
  final TextEditingController _textEditingControllertitle =
      TextEditingController();
  final TextEditingController _textEditingControllerdescription =
      TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar,
      body: backGroundWidget(
        child: Form(
          key: _key,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('Add  new task please'),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _textEditingControllertitle,
                  decoration: InputDecoration(hintText: 'title'),
                ),  SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _textEditingControllerdescription,
                  maxLines: 6,
                  decoration: InputDecoration(hintText: 'description'),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('add new task'))
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingControllertitle.dispose();
    _textEditingControllerdescription.dispose();
    super.dispose();
  }
}
