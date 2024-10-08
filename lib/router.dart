import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_chat/chat.dart';
import 'package:test_chat/help.dart';
import 'package:test_chat/home.dart';
import 'package:test_chat/notification.dart';
import 'package:test_chat/search.dart';
import 'package:test_chat/tabbar_view.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) => TabbarViewScaffold(shell: shell),
      branches: [
        StatefulShellBranch(
          initialLocation: '/home',
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => Home(),
              routes: [
                GoRoute(
                  path: 'help',
                  builder: (context, state) => Help(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          initialLocation: '/mesages',
          routes: [
            GoRoute(
              path: '/mesages',
              builder: (context, state) => Chat(),
            ),
          ],
        ),
        StatefulShellBranch(
          initialLocation: '/notifications',
          routes: [
            GoRoute(
              path: '/notifications',
              builder: (context, state) => Notifications(),
            ),
          ],
        ),
        StatefulShellBranch(
          initialLocation: '/search',
          routes: [
            GoRoute(
              path: '/search',
              builder: (context, state) => Search(),
            ),
          ],
        ),
      ],
    ),
  ],
);
