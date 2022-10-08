import 'package:flutter/material.dart';
import 'package:flutter_viber/main_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera),
              color: Colors.purple.shade800,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/chat');
              },
              icon: const Icon(Icons.border_color_rounded),
              color: Colors.purple.shade800,
            ),
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Chats',
                        style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 7.0),
                      height: 0.3,
                      width: 392.0,
                      color: Colors.grey.shade700,
                    ),
                  ],
                ),
                const MainView(
                  image: 'assets/image/download.jpeg',
                  user: 'Gor',
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_rounded),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call_sharp),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_rounded),
              label: 'More',
            ),
          ],
          selectedItemColor: Colors.purple.shade800,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
