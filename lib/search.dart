import 'package:flutter/material.dart';
import 'package:test_chat/drawer_view.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerView(),
      body: Center(
        child: Text('Search'),
      ),
    );
  }
}
