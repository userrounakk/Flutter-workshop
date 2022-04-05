import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () => setState(() => _counter = 0),
        child: const Icon(Icons.refresh),
      ),
      appBar: AppBar(
        title: const Text('Counter'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(25)),
                child: ElevatedButton(
                  onPressed: () =>
                      setState(() => _counter > 0 ? _counter-- : ''),
                  child: const Text(
                    '-',
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      elevation: MaterialStateProperty.all(0)),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Text(
                _counter.toString(),
                textScaleFactor: 5,
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(25)),
                child: ElevatedButton(
                  onPressed: () => setState(() => _counter++),
                  child: const Text(
                    '+',
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      elevation: MaterialStateProperty.all(0)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
