// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../main_page.dart' as _i1;
import '../new_chat.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    ChatRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ChatPage(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'main',
          fullMatch: true,
        ),
        _i3.RouteConfig(
          HomeRouter.name,
          path: 'main',
        ),
        _i3.RouteConfig(
          ChatRouter.name,
          path: 'chat',
        ),
      ];
}

/// generated route for
/// [_i1.MainPage]
class HomeRouter extends _i3.PageRouteInfo<void> {
  const HomeRouter()
      : super(
          HomeRouter.name,
          path: 'main',
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.ChatPage]
class ChatRouter extends _i3.PageRouteInfo<void> {
  const ChatRouter()
      : super(
          ChatRouter.name,
          path: 'chat',
        );

  static const String name = 'ChatRouter';
}
