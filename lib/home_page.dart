import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_model.dart';
import 'components/driwer.dart';
import 'components/quiz_button.dart';
import 'components/result_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List answer = <bool>[];
  List answerTrue = <bool>[];
  List answerFalse = <bool>[];

  void check(bool value) {
    if (quizzes[index].answer == value) {
      answer.add(true);
      answerTrue.add(true);
    } else {
      answer.add(false);
      answerFalse.add(false);
    }
    setState(() {
      if (quizzes[index] == quizzes.last) {
        index = 0;
        showDialog<void>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Сиз бул тесттен'),
              content: Text(
                  '${answerTrue.length} туура жооп, ${answerFalse.length} ката жооп бердиниз!'),
            );
          },
        );
        answer.clear();
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202020),
      drawer: const Driwers(),
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: const Text(
          'Тапшырма - 07',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          children: [
            const Spacer(),
            Text(
              quizzes[index].question,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 40, color: Colors.white),
            ),
            const Spacer(),
            QuizButton(
              isTrue: true,
              onPressed: (value) {
                check(value);
              },
            ),
            const SizedBox(height: 40),
            QuizButton(
              isTrue: false,
              onPressed: (value) {
                check(value);
              },
            ),
            const Spacer(),
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: answer.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int i) {
                  return answer[i]
                      ? const ResultIcon(true)
                      : const ResultIcon(false);
                },
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
