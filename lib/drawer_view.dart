import 'package:duck_router/duck_router.dart';
import 'package:flutter/material.dart';
import 'package:test_chat/main.dart';
import 'package:test_chat/router.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({super.key});

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text('Help'),
              onTap: () {
                drawerKey.currentState!.closeDrawer();
                DuckRouter.of(context).navigate(to: HelpLocation());
              },
            )
          ],
        ),
      ),
    );
  }
}
