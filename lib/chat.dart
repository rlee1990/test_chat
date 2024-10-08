import 'package:flutter/material.dart';
import 'package:test_chat/drawer_view.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerView(),
      body: Center(
        child: Text('Chat'),
      ),
    );
  }
}
