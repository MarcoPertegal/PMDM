import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  bool _colorTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Score Screen'),
      ),
      body: Center(
        child: Container(
          color: _colorTheme ? Colors.black : Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$teamAPoints',
                    style: TextStyle(
                      color: _colorTheme ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    '$teamBPoints',
                    style: TextStyle(
                      color: _colorTheme ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _colorTheme = !_colorTheme;
                  });
                },
                child: Text('Cambiar Color'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    teamAPoints++;
                  });
                },
                tooltip: 'Increment',
                child: const Text("1"),
              ),
              SizedBox(height: 16),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    teamAPoints += 2;
                  });
                },
                tooltip: 'Increment',
                child: const Text("2"),
              ),
              SizedBox(height: 16),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    teamAPoints += 3;
                  });
                },
                tooltip: 'Increment',
                child: const Text("3"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    teamBPoints++;
                  });
                },
                tooltip: 'Increment',
                child: const Text("1"),
              ),
              SizedBox(height: 16),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    teamBPoints += 2;
                  });
                },
                tooltip: 'Increment',
                child: const Text("2"),
              ),
              SizedBox(height: 16),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    teamBPoints += 3;
                  });
                },
                tooltip: 'Increment',
                child: const Text("3"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
