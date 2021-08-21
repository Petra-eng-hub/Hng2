import 'package:flutter/material.dart';

import 'mobile_track_task/widgets/custom_text.dart';

void main() {
  const myName = 'Petra Ukeh';

  printMyName(myName);
}

//Printing my name on the screen
void printMyName(String myName) {
  print('My name is $myName');
}

class MyNameView extends StatelessWidget {
  const MyNameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                stops: [0.20, 0.68, 1],
              ),
            ),
          ),
          Center(
            child: CustomText(
              'Petra Ukeh',
              color: Colors.white,
              weight: FontWeight.bold,
              size: 36,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
