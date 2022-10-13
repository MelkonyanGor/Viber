import 'package:auto_route/auto_route.dart';
import 'package:flutter_viber/main_page.dart';
import 'package:flutter_viber/new_chat.dart';
import 'package:auto_route/empty_router_widgets.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(
        initial: true,
        path: 'main',
        page: MainPage,
        name: 'HomeRouter',
        children: [
          AutoRoute(
            path: 'chat',
            page: ChatPage,
            name: 'ChatRouter',
          ),
        ]),
  ],
)
class $AppRouter {}
