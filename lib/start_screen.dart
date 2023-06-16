import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz,{super.key}) ;
  final void Function() startQuiz ;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:[
            Image.asset(
              'assets/images/quiz-logo.png' ,
              width: 300 ,
              color:  const Color.fromARGB(112, 255, 255, 255),
              ),
              const SizedBox(height: 80,),
            const Text(
              'Learn flutter fun way' ,
              style: TextStyle(
                fontSize: 25 ,
                color: Color.fromARGB(255, 244, 239, 239) ,
                ),
              ),
              Container(
                height: 50,
              ),
            OutlinedButton.icon(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(5.0),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xff3f51b5),
                  textStyle: const TextStyle(
                    fontSize: 28,
                  ),
                ),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Start Quiz')),
          ]
          ),
    );
  }
}