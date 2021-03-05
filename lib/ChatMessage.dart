import 'package:flutter/material.dart';
const String _name="Raju";
class ChatMessage extends StatelessWidget {
  final String text;
  ChatMessage({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
           margin: const EdgeInsets.only(right: 14.00),
            child: new CircleAvatar(
              child: new Text(_name[0]),
            backgroundColor: Colors.black87,
            ),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_name,style: Theme.of(context).textTheme.subhead,),
              new Container(
                margin: const EdgeInsets.only(top: 11.00),
                child: new Text(text),
              )
            ],
          )

        ],
      ),
    );
  }
}
