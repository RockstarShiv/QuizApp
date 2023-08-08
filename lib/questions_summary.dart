import 'package:flutter/material.dart';
import 'package:adv_basics/results_screen.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summary, {super.key});

  final List<Map<String, Object>> summary;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map((data) {
            return Column(
              children: [
                Row(
                  children: [
                    Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          
                          Text(
                            data['question'] as String,
                            style: const TextStyle(color: Colors.white),
                          ),
                          // const SizedBox(height: 5),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                'Your answer:',
                                style: TextStyle(color: Color.fromARGB(255, 228, 128, 248)),
                              ),
                              Text(
                                data['user_answer'] as String,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          // const SizedBox(height:5),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                'Correct answer:',
                                style: TextStyle(color: Color.fromARGB(255, 80, 220, 245)),
                              ),
                              Text(
                                data['correct_answer'] as String,
                                style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                  width: double.infinity,
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
