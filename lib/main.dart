import 'package:flutter/material.dart';
import 'package:hello2/next_page.dart';
import 'package:hello2/record.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MyHomePage(title: 'uma_musume'),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/next': (context) => NextPage(),
        '/record': (context) => Record(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('勉強時間記録アプリ'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: RaisedButton(
          child: Text('次へ'),
          onPressed: (){
            //ここに押したら反応するコードを書く
            //画面遷移のコードを書く
            Navigator.pushNamed(context, '/record');
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('ホーム'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('記録'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('TODO'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('設定'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //ここに押したら反応するコードを書く
          //画面遷移のコードを書く
          Navigator.pushNamed(context, '/next');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
