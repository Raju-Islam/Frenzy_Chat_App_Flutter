import 'package:flutter/material.dart';
import 'ChatScreen.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Center(
          child: new Text("Fenzy Chat",style: new  TextStyle(fontSize: 25),),

        ),
      ),
      body: new ChatScreen()
    );
  }
}
