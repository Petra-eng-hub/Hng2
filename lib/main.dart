import 'package:flutter/material.dart';

import 'mobile_track_task/views/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: WelcomeScreen(),
    );
  }
}
