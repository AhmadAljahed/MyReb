import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(PontsCounter());
}

class PontsCounter extends StatefulWidget {
  @override
  State<PontsCounter> createState() => _PontsCounterState();
}

class _PontsCounterState extends State<PontsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 163, 16),
          title: const Text('Points Counter'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Team A ',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    '$teamAPoints',
                    style: TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(140, 40),
                    ),
                    onPressed: () {
                      setState(() {
                        teamAPoints++;
                      });
                    },
                    child: const Text(
                      'Add 1 Point',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(140, 40),
                    ),
                    onPressed: () {
                      setState(() {
                        teamAPoints += 2;
                      });
                    },
                    child: const Text(
                      'Add 2 Point',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(140, 40),
                    ),
                    onPressed: () {
                      setState(() {
                        teamAPoints += 3;
                      });
                    },
                    child: const Text(
                      'Add 3 Point',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 475,
                  child: const VerticalDivider(
                    thickness: 1,
                    color: Color.fromARGB(191, 89, 88, 88),
                    indent: 15,
                  ),
                ),
                Column(children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Team B ',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    '$teamBPoints',
                    style: TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(140, 40),
                    ),
                    onPressed: () {
                      setState(() {
                        teamBPoints++;
                      });
                    },
                    child: const Text(
                      'Add 1 Point',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(140, 40),
                    ),
                    onPressed: () {
                      setState(() {
                        teamBPoints += 2;
                      });
                    },
                    child: const Text(
                      'Add 2 Point',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(140, 40),
                    ),
                    onPressed: () {
                      setState(() {
                        teamBPoints += 3;
                      });
                    },
                    child: const Text(
                      'Add 3 Point',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange, fixedSize: Size(140, 40)),
              onPressed: () {
                teamAPoints = 0;
                teamBPoints = 0;
                setState(() {});
              },
              child: Text(
                'Reset',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
