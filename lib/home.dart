import 'package:flutter/material.dart';
import 'package:test_chat/drawer_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerView(),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
