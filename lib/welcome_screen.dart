import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen(this.gotoQuiz, {super.key});

  final Function() gotoQuiz;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Center(
      child: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset('assets/images/mot.png'),
            SizedBox(height: 30),
            ElevatedButton(
              style: style,
              onPressed: gotoQuiz,
              child: const Text('Commencez le jeu'),
            ),
          ],
        ),
      ),
    );
  }
}
