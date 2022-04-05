import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Password Generator',
      home: const MyApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xfffa6167),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController length = TextEditingController();
  String pass = '';
  String passText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: const Color(0xfffa6167),
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Icon(
                Icons.lock,
                color: Colors.white,
                size: 60,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: length,
                  decoration: const InputDecoration(
                    labelText: 'Password Length',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  cursorColor: Colors.white,
                )),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (length.text.isNotEmpty) {
                      int.parse(length.text) > 4
                          ? pass = randomPassGenerator(
                              length: int.parse(length.text))
                          : pass = "Password Length must be greater than 4";
                    } else {
                      pass = "Password Length cannot be empty";
                    }
                    // print(pass);
                    setState(() {
                      passText = pass;
                    });
                  },
                  child: const Text(
                    'Generate Password',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xfffa6167)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              passText,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

String randomPassGenerator({int? length}) {
  var alhpabets = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];
  capitalize(arr) {
    var newArr = [];
    for (var elem in arr) {
      newArr.add(elem.toUpperCase());
    }
    return newArr;
  }

  var alphabetsC = capitalize(alhpabets);
  var neumeric = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  var symbols = ['_', '#', '%', '\$', ',', '-', '.', '!', '@', '&', '*'];
  String randomPassword = "";
  var allitems = [...alhpabets, ...alphabetsC, ...neumeric, ...symbols];
  allitems.shuffle();

  for (int i = 0; i < length!; i++) {
    if (length > allitems.length) {
      break;
    }
    randomPassword += allitems[i].toString();
  }
  return "Your password is $randomPassword";
}
