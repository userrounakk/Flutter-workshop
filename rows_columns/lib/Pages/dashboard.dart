import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff313ea3),
        title: const Text('Rows and Columns'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                  color: const Color(0xff313ea3),
                  width: 100,
                  height: 100,
                  child: const Center(
                      child: Text(
                    '1',
                    style: TextStyle(color: Colors.white),
                    textScaleFactor: 3,
                  )),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: const Color(0xff313ea3),
                  width: 100,
                  height: 100,
                  child: const Center(
                      child: Text(
                    '2',
                    style: TextStyle(color: Colors.white),
                    textScaleFactor: 3,
                  )),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color(0xff313ea3),
                  width: 100,
                  height: 100,
                  child: const Center(
                      child: Text(
                    '3',
                    style: TextStyle(color: Colors.white),
                    textScaleFactor: 3,
                  )),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color(0xff313ea3),
                  width: 100,
                  height: 100,
                  child: const Center(
                      child: Text(
                    '4',
                    style: TextStyle(color: Colors.white),
                    textScaleFactor: 3,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
