import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../tool/AccordingTheInformation.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  bool commentsOnTheThumbUp = false;
  void replyBox(){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return Container(
            height: 100.h,
              decoration: const BoxDecoration(
                color: Color(0xFF201735),
                borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(20),
                    topRight: Radius.circular(20)
                ),
              ),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15,right: 15,top: 35),
                    decoration: const BoxDecoration(
                      color: Color(0xFF0F122A),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    width: 240.w,
                    height: 40.h,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: const TextField(
                        style: TextStyle(
                          color: Colors.white
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '@回复嘻嘻:',
                          hintStyle: TextStyle(
                            color: Color(0xff77789C)
                          ),
                            enabledBorder:  UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent
                                )
                            )
                        )
                      ),
                    ),
                  ),
                  Container(
                    width:80.w,
                    margin: const EdgeInsets.only(top: 35),
                    child: ElevatedButton(
                        onPressed: (){},
                        style:ButtonStyle(
                            backgroundColor:MaterialStateColor.resolveWith((states) =>  Colors.pinkAccent),
                            shape: MaterialStateProperty.all(
                                const StadiumBorder(
                                    side: BorderSide(
                                      //设置 界面效果
                                      style: BorderStyle.solid,
                                    )
                                )
                            )
                        ) ,
                        child: Text('发送')
                    ),
                  )
                ],
              ),
          );
        },
        backgroundColor: Colors.transparent
    );
  }
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
                    headPortraitStyle('assets/images/ParesonalHome/test.png',
                        'assets/images/ParesonalHome/NotificationMessage/comments.png'),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('嘻嘻', style: TextStyle(color: Colors.white)),
                        Row(
                          children: const [
                            Text('评论你了:',
                                style: TextStyle(color: Color(0xff77789C))),
                            Text('还可以吧',
                                style: TextStyle(color: Color(0xff77789C))),
                            SizedBox(width: 10),
                            Text('·', style: TextStyle(color: Colors.white60)),
                            SizedBox(width: 5),
                            Text('刚刚', style: TextStyle(color: Colors.white60)),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                replyBox();
                              },
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/ParesonalHome/NotificationMessage/Replytocomment.png',
                                    width: 15,
                                    height: 15,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    '回复',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  commentsOnTheThumbUp = !commentsOnTheThumbUp;
                                });
                              },
                              child: Row(
                                children: [
                                  commentsOnTheThumbUp?
                                  Image.asset(
                                    'assets/images/ParesonalHome/NotificationMessage/CommentsonthethumbupOn.png',
                                    width: 15,
                                    height: 15,
                                  ):
                                  Image.asset(
                                    'assets/images/ParesonalHome/NotificationMessage/CommentsonthethumbupOff.png',
                                    width: 15,
                                    height: 15,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    '点赞',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            )
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
