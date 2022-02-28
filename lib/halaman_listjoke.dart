import 'package:flutter/material.dart';
import 'package:jokes_apps/halaman_detailjoke.dart';
import 'package:jokes_apps/jokes.dart';

class HalamanListJoke extends StatelessWidget {
  const HalamanListJoke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Joke App'),
      ),
      backgroundColor: Colors.orange,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return BuildPotrait();
          } else {
            return BuildLandscape();
          }
        },
      ),
    );
  }
}

class BuildPotrait extends StatelessWidget {
  const BuildPotrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Joke joke = jokeList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HalamanDetail(joke: joke);
            }));
          },
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Text(joke.setup),
          ),
        );
      },
      itemCount: jokeList.length,
    );
  }
}

class BuildLandscape extends StatelessWidget {
  const BuildLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Joke joke = jokeList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HalamanDetail(joke: joke);
            }));
          },
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Text(joke.setup),
          ),
        );
      },
      itemCount: jokeList.length,
    );
  }
}