import 'package:flutter/material.dart';
import 'package:QuizApp/start_screen.dart';
import 'package:QuizApp/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  //儲存選擇的答案
  final List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  //紀錄使用者選的答案
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 61, 26),
                Color.fromARGB(255, 247, 255, 7),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
