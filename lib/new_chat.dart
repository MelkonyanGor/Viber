import 'package:flutter/material.dart';

class NewChat extends StatelessWidget {
  const NewChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: TextButton(
            child: Text(
              'Cancle',
              style: TextStyle(color: Colors.purple.shade800, fontSize: 16.0),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
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
      ),
    );
  }
}
