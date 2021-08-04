
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('勉強時間計測'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.pink,
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: RaisedButton(
            child: Text('戻る'),
            onPressed: (){
              //ここに押したら反応するコードを書く
              //画面遷移のコードを書く
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }

}

