import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget{
  const StartScreen({super.key}) ;
  void startQuiz() {}

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
        colors: [Color(0xff3f51b5), Color(0xff9c27b0)],
        stops: [0, 1],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ), 
      ),
      child : Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:[
            Image.asset(
              'assets/images/quiz-logo.png' ,
              width: 300 ,
              ),
              Container(
                height: 50,
              ),
            const Text(
              'Learn flutter fun way' ,
              style: TextStyle(
                fontSize: 20 ,
                color: Color.fromARGB(255, 244, 239, 239) ,
                ),
              ),
              Container(
                height: 50,
              ),
            ElevatedButton(
                onPressed: startQuiz,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(5.0),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xff3f51b5),
                  textStyle: const TextStyle(
                    fontSize: 28,
                  ),
                ),
                child: const Text('Press Here')),
          ]
          ),
          ),
        );
  }
}