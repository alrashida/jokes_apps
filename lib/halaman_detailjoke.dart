import 'package:flutter/material.dart';
import 'package:jokes_apps/jokes.dart';

class HalamanDetail extends StatelessWidget {
  late final Joke joke;
  HalamanDetail({required this.joke});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Joke'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text(joke.setup)),
          Center(child: Text(joke.punchline)),
        ],
      ),
    );
  }
}