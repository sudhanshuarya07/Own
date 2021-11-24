// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
final int resultScore;
final Function resetHandler;

Result(this.resultScore, this.resetHandler);

//Remark Logic
String get resultPhrase {
	String resultText;
	if (resultScore >= 10) {
	resultText = 'You are awesome!';
	print(resultScore);
	}  else {
	resultText = 'This is a poor score!';
	print(resultScore);
	}
	return resultText;
}

@override
Widget build(BuildContext context) {
	return Center(
	child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: <Widget>[
		Text(
			resultPhrase,
			style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
			textAlign: TextAlign.center,
		), //Text
		Text(
			'Score ' '$resultScore',
			style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
			textAlign: TextAlign.center,
		), //Text
		FlatButton(
			child: Text(
			'Restart Quiz!',
			), //Text
			textColor: Colors.blue,
			onPressed: resetHandler,
		), //FlatButton
		], //<Widget>[]
	), //Column
	); //Center
}
}
