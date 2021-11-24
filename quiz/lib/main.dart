import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
@override
State<StatefulWidget> createState() {
	return _MyAppState();
}
}

class _MyAppState extends State<MyApp> {
final _questions = const [
	{
	'questionText': 'Q1. Who is the first Sikh Prime Minister of India?',
	'answers': [
		{'text': ' Gulzarilal Nanda', 'score': -2},
		{'text': 'Charan Singh', 'score': -2},
		{'text': 'Manmohan Singh', 'score': 10},
		{'text': 'Chandra Shekhar', 'score': -2},
	],
	},
	{
	'questionText': 'Q2.  When was National Emergency announced for the first time??',
	'answers': [
		{'text': 'January 31,1953', 'score': 20},
		{'text': 'October 26, 1962', 'score': -2},
		{'text': 'September 23, 1962', 'score': -2},
		{
		'text':
			'None of these',
		'score': -2
		},
	],
	},
	
];

var _questionIndex = 0;
var _totalScore = 0;

void _resetQuiz() {
	setState(() {
	_questionIndex = 0;
	_totalScore = 0;
	});
}

void _answerQuestion(int score) {
	_totalScore += score;

	setState(() {
	_questionIndex = _questionIndex + 1;
	});
	print(_questionIndex);
	if (_questionIndex < _questions.length) {
	print('We have more questions!');
	} else {
	print('No more questions!');
	}
}

@override
Widget build(BuildContext context) {
	return MaterialApp(
	home: Scaffold(
		appBar: AppBar(
		title: Text('Quiz'),
		backgroundColor: Colors.purple,
		),
		body: Padding(
		padding: const EdgeInsets.all(30.0),
		child: _questionIndex < _questions.length
			? Quiz(
				answerQuestion: _answerQuestion,
				questionIndex: _questionIndex,
				questions: _questions,
				) //Quiz
			: Result(_totalScore, _resetQuiz),
		), //Padding
	), //Scaffold
	debugShowCheckedModeBanner: false,
	); //MaterialApp
}
}
