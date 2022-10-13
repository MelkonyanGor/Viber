import 'package:flutter/material.dart';
import 'package:flutter_viber/main_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_viber/routes/router.gr.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
                context.router.push(const ChatRouter());
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
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 7.0),
                      height: 0.5,
                      width: screenWidth,
                      color: Colors.grey.shade900,
                    ),
                  ],
                ),
                const MainView(
                  image: 'assets/image/images (1).jpeg',
                  user: 'Suzanna',
                  time: 'Today',
                ),
                const MainView(
                  image: 'assets/image/istockphoto-1296158947-612x612.jpg',
                  user: 'Sam',
                  time: 'Today',
                ),
                const MainView(
                  image: 'assets/image/_122913868_dulcie.jpg',
                  user: 'Anna',
                  time: 'Thusday',
                ),
                const MainView(
                  image: 'assets/image/images (1).jpeg',
                  user: 'Maria',
                  time: 'Thursday',
                ),
                const MainView(
                  image: 'assets/image/images.jpeg',
                  user: 'Alex',
                  time: 'Monday',
                ),
                const MainView(
                  image: 'assets/image/images.jpeg',
                  user: 'Jason',
                  time: 'Sunday',
                ),
                const MainView(
                  image: 'assets/image/images (1).jpeg',
                  user: 'Lina',
                  time: 'Saturday',
                ),
                const MainView(
                  image: 'assets/image/images.jpeg',
                  user: 'Hayk',
                  time: 'Yesturday',
                ),
                const MainView(
                  image: 'assets/image/_122913868_dulcie.jpg',
                  user: 'Lusine',
                  time: 'Friday',
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
