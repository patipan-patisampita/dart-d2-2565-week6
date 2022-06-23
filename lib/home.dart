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
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Menu",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
            ListTile(
              title: Text("Home"),
              onTap: (){},
            ),
            ListTile(
              title: Text("About"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Contact"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Exit"),
              onTap: (){},
            ),
          ],
        ),
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


