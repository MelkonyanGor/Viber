import 'package:flutter/material.dart';
import 'package:flutter_viber/main_page.dart';
import 'package:flutter_viber/new_chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        '/chat':(context) => const NewChat(),
      },
    );
  }
}
