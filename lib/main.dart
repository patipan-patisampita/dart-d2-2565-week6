import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Flutter App"),
        ),
        body: Center(
          child: Text(
            "Count:",
            style: TextStyle(
              fontSize: 30,
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("count:");
          },
          child: Icon(Icons.add_alarm_sharp),
        ),
      ),
    );
  }
}
