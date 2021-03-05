import 'package:flutter/material.dart';
import 'package:frenzy_chat/ChatMessage.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textfieldController = new TextEditingController();
  final List <ChatMessage> _messages = <ChatMessage> [];

  void _handlsubmitted(String text) {
    _textfieldController.clear();
    ChatMessage message=new ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _textComposer() {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        children: <Widget>[
          new Flexible(
            child: new TextField(
              decoration:
                  new InputDecoration.collapsed(hintText: "send message"),
              controller: _textfieldController,
              onSubmitted: _handlsubmitted,
            ),
          ),
          new Container(
              child: new IconButton(
            icon: new Icon(Icons.send),
            color: Colors.blue,
            onPressed: () => _handlsubmitted(_textfieldController.text),
          )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Flexible(
          child: ListView.builder(
            padding: const EdgeInsets.all(7.0),
            reverse: true,
            itemBuilder: (context, index) => _messages[index],
            itemCount: _messages.length,
          ),
        ),
        new Divider(
          height: 1.0,
        ),

        new Container(
          decoration: new BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposer(),
        )
      ],
    );
  }
}
