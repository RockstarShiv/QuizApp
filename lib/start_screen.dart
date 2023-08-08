import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(42, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          Text(
            "Learn flutter the fun way!",
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 14),
            ),
            icon: const Icon(
              Icons.arrow_circle_right,
              color: Colors.white,
            ),
            label: const Text(
              "Start quiz",
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
