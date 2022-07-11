import 'package:flutter/material.dart';

class GiveALikePage extends StatefulWidget {
  const GiveALikePage({Key? key}) : super(key: key);

  @override
  State<GiveALikePage> createState() => _GiveALikePageState();
}

class _GiveALikePageState extends State<GiveALikePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff0F122A),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        ClipOval(
                          child: Image.asset(
                              'assets/images/ParesonalHome/test.png',
                              width: 60,
                              height: 60),
                        ),
                        Positioned(
                          top: 40,
                          left: 40,
                          child: ClipOval(
                            child: Image.asset(
                                'assets/images/ParesonalHome/NotificationMessage/GiveALikes.png',
                                width: 20,
                                height: 20),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('嘻嘻', style: TextStyle(color: Colors.white)),
                        Row(
                          children: const [
                            Text('赞了你的藏品  ',
                                style: TextStyle(color: Color(0xff77789C))),
                            Text('刚刚',
                                style: TextStyle(color: Color(0xff77789C))),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
