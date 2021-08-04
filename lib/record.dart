import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Record extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    List<Widget> listTiles = <Widget>[
      Container(
          decoration: new BoxDecoration(
            border: new Border(
              bottom: new BorderSide(color: Colors.black),
            ),
          ),
          child: ListTile(
            leading: Icon(Icons.timeline),
            title: Text('総合計勉強時間'),
          )
      ),
      Container(
          decoration: new BoxDecoration(
            border: new Border(
              bottom: new BorderSide(color: Colors.black),
            ),
          ),
          child: ListTile(
            title: Text('12'+'時間'+'34'+'分'+'56'+'秒' , textAlign: TextAlign.right),
          )
      ),
      Container(
          decoration: new BoxDecoration(
            border: new Border(
              bottom: new BorderSide(color: Colors.black),
            ),
          ),
          child: ListTile(
            leading: Icon(Icons.timeline),
            title: Text('今月の勉強時間'),
          )
      ),
      Container(
          decoration: new BoxDecoration(
            border: new Border(
              bottom: new BorderSide(color: Colors.black),
            ),
          ),
          child: ListTile(
            title: Text('12'+'時間'+'34'+'分'+'56'+'秒' , textAlign: TextAlign.right),
          )
      ),
      Container(
          decoration: new BoxDecoration(
            border: new Border(
              bottom: new BorderSide(color: Colors.black),
            ),
          ),
          child: ListTile(
            leading: Icon(Icons.timeline),
            title: Text('今週の勉強時間'),
          )
      ),
      Container(
          decoration: new BoxDecoration(
            border: new Border(
              bottom: new BorderSide(color: Colors.black),
            ),
          ),
          child: ListTile(
            title: Text('3'+'時間'+'4'+'分'+'6'+'秒' , textAlign: TextAlign.right),
          )
      ),
      Container(
          decoration: new BoxDecoration(
            border: new Border(
              bottom: new BorderSide(color: Colors.black),
            ),
          ),
          child: ListTile(
            leading: Icon(Icons.timeline),
            title: Text('今日の勉強時間'),
          )
      ),
      Container(
          decoration: new BoxDecoration(
            border: new Border(
              bottom: new BorderSide(color: Colors.black),
            ),
          ),
          child: ListTile(
            title: Text('0'+'時間'+'10'+'分'+'2'+'秒' , textAlign: TextAlign.right),
          )
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('記録'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: ListView(
              children: listTiles
          ),
        ),
      ),
    );
  }

}