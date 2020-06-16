import 'package:flutter/material.dart';
import 'package:nowywygladapkitrucker/theme.dart';

class ChatPage extends StatefulWidget {
  final int index;

  ChatPage({this.index});
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat ' + widget.index.toString()),
        centerTitle: true,
        flexibleSpace: appBarLook(context: context),
      ),
      body: Container(
        decoration: bodyLook(context: context),
      ),
    );
  }
}
