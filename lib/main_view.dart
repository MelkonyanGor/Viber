import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  final String image;
  final String user;

  const MainView({Key? key, required this.image, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            Card(
              elevation: 0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(),
                borderRadius: BorderRadius.all(Radius.circular(0.0)),
              ),
              child: Column(
                children: [
                  Container(
                    color: Colors.black,
                    width: screenWidth,
                    height: 100,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: CircleAvatar(
                                    radius: 35.0,
                                    backgroundImage: AssetImage(image),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 19.0,
                                    color: Colors.white),
                              ),
                              Text(
                                'no massages',
                                style: TextStyle(color: Colors.grey.shade300),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
