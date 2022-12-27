import 'package:flutter/material.dart';
import 'question.dart';
import 'questions_with_answers_desk.dart';

class Answer extends StatefulWidget {
  const Answer({super.key});

  @override
  State<Answer> createState() => _MyAnswerState();
}

class _MyAnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      // Centerlize all widgets
      body: Center(
        child: Column(children: [
          // Widget that reponse based on user's answer
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              QuestionsWithAnswersDesk()
                  .questionDesk[questionIndex]['statement']
                  .toString(),
              style: const TextStyle(fontSize: 20),
            ),
          ),
          // A button to navigate to the next questions
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton(
                onPressed: () {
                  //error handling when the index over the array of question desk
                  // the index will back to 0, means questions will reset back to the first question.
                  if (questionIndex <
                      QuestionsWithAnswersDesk().questionDesk.length - 1) {
                    questionIndex++;
                  } else {
                    questionIndex = 0;
                  }

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Question(
                              numberInput: questionIndex,
                            )),
                  );
                },
                child: const Text(
                  "OK",
                  style: TextStyle(fontSize: 20),
                )),
          )
        ]),
      ),
    );
  }
}
