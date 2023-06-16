import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/question.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.txt,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: currentQuestion.ans[0], onTap: () {}),
          AnswerButton(answerText: currentQuestion.ans[1], onTap: () {}),
          AnswerButton(answerText: currentQuestion.ans[2], onTap: () {}),
          AnswerButton(answerText: currentQuestion.ans[3], onTap: () {}),
        ],
      ),
    );
  }
}
