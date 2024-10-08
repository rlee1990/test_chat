import 'package:flutter/material.dart';
import 'package:test_chat/drawer_view.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerView(),
      body: Center(
        child: Text('Notifications'),
      ),
    );
  }
}
