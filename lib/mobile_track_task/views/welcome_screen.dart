import 'package:flutter/material.dart';

import '../../compulsory_task.dart';
import '../utilities/constants.dart';
import '../widgets/custom_button.dart';
import 'todo_list_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
                stops: [0.20, 0.68, 1],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const ImageIcon(
                    logoAsset,
                    size: 300,
                    // color: themePrimaryColor,
                  ),
                  const SizedBox(height: 32),
                  CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyNameView(),
                        ),
                      );
                    },
                    label: 'Compulsory task',
                    iconData: Icons.search,
                  ),
                  const SizedBox(height: 16),
                  CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegistrationScreen(),
                        ),
                      );
                    },
                    label: 'Mobile track task',
                    iconData: Icons.message,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
