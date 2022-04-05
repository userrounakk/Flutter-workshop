import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _teamOne = 0;
  int _teamTwo = 0;
  String result = '';
  Color winningColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Score Tracker'),
          backgroundColor: const Color(0xfffa6167),
        ),
        body: Column(
          children: [
            const SizedBox(height: 60),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: width * .45,
                        height: 50,
                        color: Colors.green,
                        child: const Center(
                          child: Text(
                            'Team One',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width * .45,
                        height: width * .45,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            _teamOne.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 80,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: width * .45,
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () => setState(
                                    () => _teamOne > 0 ? _teamOne-- : ''),
                                child: const Text(
                                  '-',
                                  textScaleFactor: 2,
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color(0xfffa6167))),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () => setState(() => _teamOne++),
                                child: const Text(
                                  '+',
                                  textScaleFactor: 2,
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color(0xfffa6167))),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: width * .45,
                        height: 50,
                        color: Colors.blue,
                        child: const Center(
                          child: Text(
                            'Team Two',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width * .45,
                        height: width * .45,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            _teamTwo.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 80,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: width * .45,
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () => setState(
                                    () => _teamTwo > 0 ? _teamTwo-- : ''),
                                child: const Text(
                                  '-',
                                  textScaleFactor: 2,
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color(0xfffa6167))),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () => setState(() => _teamTwo++),
                                child: const Text(
                                  '+',
                                  textScaleFactor: 2,
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color(0xfffa6167))),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            SizedBox(
              width: width * .95,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_teamOne == _teamTwo) {
                      result = 'Its a Draw';
                      winningColor = const Color(0xfffa6167);
                    } else if (_teamOne > _teamTwo) {
                      result = 'Team One Wins';
                      winningColor = Colors.green;
                    } else {
                      result = 'Team Two Wins';
                      winningColor = Colors.blue;
                    }
                  });
                },
                child: const Text(
                  'Result',
                  textScaleFactor: 2,
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xfffa6167))),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: width * .95,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _teamOne = 0;
                    _teamTwo = 0;
                    result = '';
                  });
                },
                child: const Text(
                  'Reset',
                  textScaleFactor: 2,
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xfffa6167))),
              ),
            ),
            const SizedBox(height: 40),
            Text(
              result,
              style: TextStyle(
                  color: winningColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            )
          ],
        ));
  }
}
