import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter Basic"),
      ),
      body: Center(
        child: Text(
          "Count:$_count",
          style: TextStyle(
            fontSize: 40,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            _count ++;
            debugPrint("count:$_count");
          });
        },
        child: Icon(Icons.add_alarm),
      ),
    );
  }
}


