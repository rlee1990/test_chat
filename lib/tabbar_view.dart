import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_chat/drawer_view.dart';
import 'package:test_chat/main.dart';

class TabbarViewScaffold extends StatefulWidget {
  final StatefulNavigationShell shell;
  const TabbarViewScaffold({super.key, required this.shell});

  @override
  State<TabbarViewScaffold> createState() => _TabbarViewScaffoldState();
}

class _TabbarViewScaffoldState extends State<TabbarViewScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.shell,
      drawer: DrawerView(),
      key: drawerKey,
      bottomNavigationBar: NavigationBar(
        height: 55,
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            selectedIcon: Icon(
              Icons.home_filled,
              color: Colors.deepPurple,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.chat,
              color: Colors.grey,
            ),
            selectedIcon: Icon(
              Icons.chat,
              color: Colors.deepPurple,
            ),
            label: 'Messages',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
            selectedIcon: Icon(
              Icons.notifications,
              color: Colors.deepPurple,
            ),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            selectedIcon: Icon(
              Icons.search,
              color: Colors.deepPurple,
            ),
            label: 'Search',
          ),
        ],
        selectedIndex: widget.shell.currentIndex,
        elevation: 10,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        indicatorColor: Colors.transparent,
        indicatorShape: const CircleBorder(),
        onDestinationSelected: (index) {
          widget.shell.goBranch(index, initialLocation: true);
        },
      ),
    );
  }
}
