import 'package:adv_basics/models/questions.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

  const List<Color> colors = [
    Color.fromARGB(255, 23, 2, 50),
    Color.fromARGB(255, 99, 15, 138)
  ];

  

class _QuizState extends State<Quiz> {

  // Widget? activeScreen;

  // @override
  // void initState(){
  //   activeScreen=StartScreen(switchScreen); 
  //   super.initState();
  // }

  List<String> selectedAnswers=[];
  var activeScreen="start-screen";

  switchScreen()
  {
    setState(() {
      activeScreen="questions-screen";
    });
  }

  void chooseAnswer(String answer)
  {
    selectedAnswers.add(answer);
    if(selectedAnswers.length==questions.length)
    {
      setState(() {
        activeScreen="results-screen";
      });
    }
  }

  void restart()
  {
    setState(() {
      activeScreen="start-screen";
      selectedAnswers=[];
    });
  }
  
  @override
  Widget build(context) {

    // final currentScreen=activeScreen=="start-screen"?StartScreen(switchScreen):const QuestionsScreen();
    Widget  currentScreen=StartScreen(switchScreen);

    if(activeScreen=="questions-screen")
    {
      currentScreen=QuestionsScreen(chooseAnswer);
    }

    if(activeScreen=="results-screen")
    {
      currentScreen=ResultsScreen(selectedAnswers,restart);
    }
    
    if(activeScreen=="start-screen")
    {
      currentScreen=StartScreen(switchScreen);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}
