import 'package:flutter/material.dart';
import 'package:test_chat/router.dart';
import 'package:wiredash/wiredash.dart';

final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
final appRouter = router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Wiredash(
      projectId: 'test-69gzcn0',
      secret: 'eQwCJiDU7pHFlFZluU7BY0-f1-vBmKso',
      feedbackOptions: const WiredashFeedbackOptions(
        labels: [
          Label(
            id: 'label-8vquxfh050',
            title: 'Error',
          ),
          Label(
            id: 'label-tuoioqsajl',
            title: 'Feature Request',
          ),
          Label(
            id: 'label-8ubfx9r4sz',
            title: 'Positive Feedback',
          ),
        ],
      ),
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
      ),
    );
  }
}
