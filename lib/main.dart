import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CounterDemo',
      home: Myhomapage(),
    );
  }
}

class Myhomapage extends StatefulWidget {
  const Myhomapage({super.key});

  @override
  State<Myhomapage> createState() => _MyhomapageState();
}

class _MyhomapageState extends State<Myhomapage> {
  int  _n = 0;
  @override
  void add() {
    setState(() {
      _n++;
    });
  }
  void sub() {
    setState(() {
      _n--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter demo"),
      ),
      body: Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: add,
                  child: new Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.white,
                ),
                Text(
                  '$_n',
                  style: new TextStyle(fontSize: 50),
                ),
                FloatingActionButton(
                  onPressed: sub,
                  child: new Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.white,
                ),

              ],
            ),
          )

      ),
    );
  }
}

