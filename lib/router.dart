import 'package:duck_router/duck_router.dart';
import 'package:test_chat/chat.dart';
import 'package:test_chat/help.dart';
import 'package:test_chat/home.dart';
import 'package:test_chat/notification.dart';
import 'package:test_chat/search.dart';
import 'package:test_chat/tabbar_view.dart';

final router = DuckRouter(initialLocation: NavigationLocation());

class HomeLocation extends Location {
  @override
  String get path => 'home';

  @override
  LocationBuilder? get builder => (context) => const Home();
}

class ChatLocation extends Location {
  @override
  String get path => 'mesages';

  @override
  LocationBuilder? get builder => (context) => const Chat();
}

class NotificationLocation extends Location {
  @override
  String get path => 'notifications';

  @override
  LocationBuilder? get builder => (context) => const Notifications();
}

class HelpLocation extends Location {
  @override
  String get path => 'help';

  @override
  LocationBuilder? get builder => (context) => const Help();
}

class SearchLocation extends Location {
  @override
  String get path => 'search';

  @override
  LocationBuilder? get builder => (context) => const Search();
}

class NavigationLocation extends StatefulLocation {
  @override
  StatefulLocationBuilder get childBuilder =>
      (context, shell) => TabbarViewScaffold(shell: shell);

  @override
  List<Location> get children => [
        HomeLocation(),
        ChatLocation(),
        NotificationLocation(),
        SearchLocation(),
      ];

  @override
  String get path => '/';
}
