import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Meet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text('Item 1'),
            ),
            ListTile(
              title: Text('Item 2'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            // backgroundImage: NetworkImage(""),
          )
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(activeColor: Colors.black, items: [
        BottomNavigationBarItem(
          label: "Mail",
          icon: Icon(Icons.mail_outlined),
        ),
        BottomNavigationBarItem(
          label: "Chat",
          icon: Icon(Icons.messenger_outline),
        ),
        BottomNavigationBarItem(
          label: "Spaces",
          icon: Icon(Icons.group_outlined),
        ),
        BottomNavigationBarItem(
          label: "Meet",
          icon: Icon(Icons.video_call_outlined),
        ),
      ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  child: Text(
                    'New meeting',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(), backgroundColor: Colors.white),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  child: Text(
                    'Join a meeting',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(), backgroundColor: Colors.white),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 80, right: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Get a link you can share",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Tap New meeting to get a link you can send to people you want to meet with",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
          Container(
            height: 20,
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
