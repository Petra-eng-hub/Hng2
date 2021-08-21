import 'package:flutter/material.dart';
import 'package:hngtask2/mobile_track_task/widgets/custom_button.dart';

import '../utilities/constants.dart';
import '../utilities/validators.dart';
import '../view_models/todo_list_view_model.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_textfield.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  ToDoListViewModel model = ToDoListViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sea.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black54, Colors.black87],
                stops: [0.10, 0.48, 1],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
            child: SingleChildScrollView(
              reverse: true,
              child: Form(
                key: model.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      'ToDo List',
                      size: 32,
                      color: textWhite,
                      weight: FontWeight.bold,
                    ),
                    const SizedBox(height: 8),
                    CustomTextField(
                      label: 'S/N',
                      controller: model.serialNumber,
                      validator: Validator.validate.notEmptyField,
                    ),
                    const SizedBox(height: 4),
                    CustomTextField(
                      label: 'Task',
                      controller: model.task,
                      validator: Validator.validate.notEmptyField,
                    ),
                    const SizedBox(height: 4),
                    CustomTextField(
                      label: 'Status',
                      controller: model.status,
                    ),
                    const SizedBox(height: 16),
                    CustomButton(
                      fillColor: registerButtonColor,
                      onPressed: () {
                        if (model.formKey.currentState?.validate() ?? false) {
                          model.saveUserData(context);
                        }
                      },
                      label: 'Done',
                      iconData: Icons.message,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
