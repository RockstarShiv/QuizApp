import 'package:flutter/material.dart';
import 'package:adv_basics/models/questions.dart';
import 'package:adv_basics/questions_summary.dart';


class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers,this.restart ,{super.key});

  final List<String> chosenAnswers;
  final void Function() restart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].questions,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final Y = questions.length;
    final X = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length; //doesn't change list like map


    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("you answered $X out of $Y questions correct!",
                  style: const TextStyle(
                      color: Color.fromARGB(255, 220, 146, 232), fontSize: 20)),
              const SizedBox(height: 30),
              QuestionsSummary(summaryData),
              const SizedBox(height: 30),
              TextButton.icon(
                  onPressed: restart,
                  icon: const Icon(
                    Icons.autorenew,
                    color: Color.fromARGB(255, 213, 88, 236),
                  ),
                  label: const Text(
                    "Retry",
                    style: TextStyle(color: Color.fromARGB(255, 213, 88, 236)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
