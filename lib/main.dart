/* 
Name : See Pao Yeong
Matrix Number : S58079
Description : This application will show the user a list of question for user to answer. A respond page will show up once the user choose his/her answer. Once all the questions in the question desk are completed by the user. The application will start all over again.
*/

import 'package:flutter/material.dart';
import 'package:s58079_individual_assignment_2/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Question(
        numberInput: 0,
      ),
    );
  }
}
