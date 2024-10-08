import 'package:flutter/material.dart';
import 'package:wiredash/wiredash.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help & Info'),
        actions: [
          IconButton(
            onPressed: () {
              Wiredash.of(context).show(inheritMaterialTheme: true);
            },
            icon: const Icon(Icons.feedback_outlined),
          )
        ],
      ),
      body: Center(
        child: Text('Help'),
      ),
    );
  }
}
