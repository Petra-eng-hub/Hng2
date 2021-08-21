import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/todo_list_output_screen.dart';

class ToDoListViewModel {
  final GlobalKey<FormState> formKey = GlobalKey();
  final serialNumber = TextEditingController();
  final task = TextEditingController();
  final status = TextEditingController();

// This function handles the passage of data.
// It can be used to store the data and perform other needed opeations.
// For now, it's acting as a passage for the user input.
  void saveUserData(context) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OutputScreen(
          serialNumber: serialNumber.text,
          task: task.text,
          status: status.text,
        ),
      ),
    );
  }
}
