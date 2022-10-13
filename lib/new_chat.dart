import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: const AutoLeadingButton(),
          backgroundColor: Colors.black,
          actions: [
            Row(
              children: [
                const Text(
                  'New Chat',
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(
                  width: 100.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.group,
                    color: Colors.purple.shade800,
                  ),
                )
              ],
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 0.5,
                  width: screenWidth,
                  color: Colors.grey.shade900,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.black,
                  width: screenWidth,
                  height: 60.0,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundImage: AssetImage(
                                    'assets/image/images (1).jpeg',
                                  ),
                                ),
                              ),
                              Text(
                                'fhshu',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
