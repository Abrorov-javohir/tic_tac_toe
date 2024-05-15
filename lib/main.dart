import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isX = true;
  String box1 = "";
  String box2 = "";
  String box3 = "";
  String box4 = "";
  String box5 = "";
  String box6 = "";
  String box7 = "";
  String box8 = "";
  String box9 = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (box1 == "") {
                        setState(() {
                          box1 = isX ? "X" : "O";
                          isX = !isX;
                        });
                      }
                    },
                    child: Container(
                      color: Colors.amber,
                      padding: const EdgeInsets.all(20),
                      child: Text(box1),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (box2 == "") {
                        setState(() {
                          box2 = isX ? "X" : "O";
                          isX = !isX;
                        });
                      }
                    },
                    child: Container(
                      color: Colors.red,
                      padding: const EdgeInsets.all(20),
                      child: Text(box2),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (box3 == "") {
                        setState(() {
                          box3 = isX ? "X" : "O";
                          isX = !isX;
                        });
                      }
                    },
                    child: Container(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(20),
                      child: Text(box3),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (box4 == "") {
                        setState(() {
                          box4 = isX ? "X" : "O";
                          isX = !isX;
                        });
                      }
                    },
                    child: Container(
                      color: Colors.amber,
                      padding: const EdgeInsets.all(20),
                      child: Text(box4),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (box5 == "") {
                        setState(() {
                          box5 = isX ? "X" : "O";
                          isX = !isX;
                        });
                      }
                    },
                    child: Container(
                      color: Colors.red,
                      padding: const EdgeInsets.all(20),
                      child: Text(box5),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (box6 == "") {
                        setState(() {
                          box6 = isX ? "X" : "O";
                          isX = !isX;
                        });
                      }
                    },
                    child: Container(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(20),
                      child: Text(box6),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (box7 == "") {
                        setState(() {
                          box7 = isX ? "X" : "O";
                          isX = !isX;
                        });
                      }
                    },
                    child: Container(
                      color: Colors.amber,
                      padding: const EdgeInsets.all(20),
                      child: Text(box7),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (box8 == "") {
                        setState(() {
                          box8 = isX ? "X" : "O";
                          isX = !isX;
                        });
                      }
                    },
                    child: Container(
                      color: Colors.red,
                      padding: const EdgeInsets.all(20),
                      child: Text(box8),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (box9 == "") {
                        setState(() {
                          box9 = isX ? "X" : "O";
                          isX = !isX;
                        });
                      }
                    },
                    child: Container(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(20),
                      child: Text(box9),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: TextButton(
                      onPressed: newGame, child: const Text("New Game")),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: TextButton(
                      onPressed: resetGame, child: const Text("Reset")),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void newGame() {
    setState(() {
      box1 = "";
      box2 = "";
      box3 = "";
      box4 = "";
      box5 = "";
      box6 = "";
      box7 = "";
      box8 = "";
      box9 = "";
      isX = true;
    });
  }

  void resetGame() {
    setState(() {
      newGame();
    });
  }

  String chekWinner() {
    if (box1 == box2 && box2 == box3 && box1 != "") {
      return box1;
    } else if (box4 == box5 && box5 == box6 && box4 != "") {
      return box4;
    } else if (box7 == box8 && box8 == box9 && box7 != "") {
      return box7;
    } else if (box1 == box4 && box4 == box7 && box1 != "") {
      return box1;
    } else if (box2 == box5 && box5 == box8 && box2 != "") {
      return box2;
    } else if (box3 == box6 && box6 == box9 && box3 != "") {
      return box3;
    } else if (box1 == box5 && box5 == box9 && box1 != "") {
      return box1;
    } else if (box3 == box5 && box5 == box7 && box3 != "") {
      return box3;
    } else if (box1 != "" &&
        box2 != "" &&
        box3 != "" &&
        box4 != "" &&
        box5 != "" &&
        box6 != "" &&
        box7 != "" &&
        box8 != "" &&
        box9 != "") {
      return "draw";
    } else {
      return "no winner";
    }
  }
}
