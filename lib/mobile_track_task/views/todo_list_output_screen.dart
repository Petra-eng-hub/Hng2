import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hngtask2/mobile_track_task/view_models/todo_list_output_view_model.dart';

import '../utilities/constants.dart';
import '../widgets/custom_text.dart';

class OutputScreen extends StatelessWidget {
  String serialNumber;
  String task;
  String status;

  var serialnumber;
  OutputScreen({
    Key? key,
    required this.serialNumber,
    required this.task,
    required this.status,
  }) : super(key: key);

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
                stops: [0.18, 0.48, 1],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                const SizedBox(height: 4),
                const CustomText(
                  'My ToDo List',
                  size: 20,
                  color: textWhite,
                  weight: FontWeight.bold,
                ),
                const SizedBox(height: 4),
                CustomText(
                  'S/N: $serialnumber.',
                  size: 16,
                  color: textWhite,
                  weight: FontWeight.w500,
                ),
                const SizedBox(height: 4),
                CustomText(
                  'Task: $task.',
                  size: 16,
                  color: textWhite,
                  weight: FontWeight.w500,
                ),
                const SizedBox(height: 4),
                CustomText(
                  'Status: $status.',
                  size: 16,
                  color: textWhite,
                  weight: FontWeight.w500,
                ),
                const SizedBox(height: 32),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'For further information',
                      style: GoogleFonts.mulish(
                        fontSize: 15,
                        color: textWhite,
                      ),
                      children: [
                        TextSpan(
                          text: 'Click here',
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: themePrimaryColor,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              ToDoListOutputModel().launchUrl();
                            },
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
