import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text, this.fun, {super.key});

  final String text;
  final void Function() fun;
  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: fun,
        style: ElevatedButton.styleFrom(
          padding:const  EdgeInsets.symmetric(vertical: 10,horizontal: 40),
          textStyle: const TextStyle(fontSize: 15),
          backgroundColor: const Color.fromARGB(255, 50, 1, 63),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        
        ),
        child: Text(text,textAlign: TextAlign.center,),
      ),
    );
  }
}
