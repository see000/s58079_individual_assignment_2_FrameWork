import 'package:flutter/material.dart';
import 'package:s58079_individual_assignment_2/answer.dart';
import 'questions_with_answers_desk.dart';

var pressedButtonValue;
var questionIndex = 0;
var title =
    QuestionsWithAnswersDesk().questionDesk[questionIndex]['title'].toString();
var questionAsk = QuestionsWithAnswersDesk()
    .questionDesk[questionIndex]['question']
    .toString();
var answerOption = QuestionsWithAnswersDesk().questionDesk[questionIndex]
    ['answers'] as List<String>;

class Question extends StatefulWidget {
  // constructor to receive the curent questionIndex pointer
  Question({super.key, final numberInput}) {
    questionIndex = numberInput;

    //override the title, question ask, and answer option
    title = QuestionsWithAnswersDesk()
        .questionDesk[questionIndex]['title']
        .toString();
    questionAsk = QuestionsWithAnswersDesk()
        .questionDesk[questionIndex]['question']
        .toString();
    answerOption = QuestionsWithAnswersDesk().questionDesk[questionIndex]
        ['answers'] as List<String>;
  }

  @override
  State<Question> createState() => _MyQuestionState();
}

class _MyQuestionState extends State<Question> {
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
      //Align all widget in the center
      body: Center(
        child: Column(children: <Widget>[
          // Widget to display the question
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              questionAsk,
              style: const TextStyle(fontSize: 20),
            ),
          ),

          //First Option Button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  _retriveButtonValue(answerOption[0]);

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Answer()),
                  );
                },
                child: Text(
                  answerOption[0],
                  style: const TextStyle(fontSize: 20),
                )),
          ),

          //Second Option Button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  _retriveButtonValue(answerOption[1]);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Answer()),
                  );
                },
                child: Text(
                  answerOption[1],
                  style: const TextStyle(fontSize: 20),
                )),
          ),

          // Third option button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  _retriveButtonValue(answerOption[2]);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Answer()),
                  );
                },
                child: Text(
                  answerOption[2],
                  style: const TextStyle(fontSize: 20),
                )),
          ),

          // forth option button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  _retriveButtonValue(answerOption[3]);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Answer()),
                  );
                },
                child: Text(
                  answerOption[3],
                  style: const TextStyle(fontSize: 20),
                )),
          )
        ]),
      ),
    );
  }
}

// funtion to get the button value
void _retriveButtonValue(String answerSelected) {
  pressedButtonValue = answerSelected;
}
