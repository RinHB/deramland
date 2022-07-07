import 'package:flutter/material.dart';
class FocusPage extends StatefulWidget {
  const FocusPage({Key? key}) : super(key: key);

  @override
  State<FocusPage> createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff0F122A),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            height: 150,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.asset('assets/images/ParesonalHome/test.png',width: 50,height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('嘻嘻',style: TextStyle(color: Colors.white)),
                        Row(
                          children:  [
                            ClipOval(
                              child: Image.asset('assets/images/ParesonalHome/NotificationMessage/GiveALikes.png',width: 20,height: 20),
                            ),
                            const  Text('赞了你的藏品  ',style: TextStyle(color: Color(0xff77789C))),
                            const Text('刚刚',style: TextStyle(color: Color(0xff77789C))),
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
