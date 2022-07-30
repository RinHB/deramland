import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../tool/ButtonCollection.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff0F122A),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.all(12),
            height: 140.h,
            decoration: const BoxDecoration(
                color: Color(0xff2B1A3D),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10,top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flex(
                        direction: Axis.horizontal,
                        children:  [
                          const Text(
                            '系统消息',
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(width: 5),
                          Image.asset('assets/images/ParesonalHome/NotificationMessage/RedDot.png')
                        ],
                      ),
                      const Text(
                        '2022年07月05日 09:00',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text('你订阅的发售日历更新啦~',style:  TextStyle(color: Colors.white,fontSize: 17),),
                  const Text('超多数字藏品上新，总有一款戳中你，快来看看',style: TextStyle(color: Color(0xff77789C)),),
                  const SizedBox(height: 10),
                  Container(
                    decoration: const BoxDecoration(
                        border:Border(bottom:BorderSide(width: 1,color: Color(0xffF0F0F0)) )
                    ),
                  ),
                  Expanded(
                      child:personalHomePageButton('查看详细',(){})
                  ),
                ],
              ),
            ),
          ),
          const Center(child: Text('没有更多内容啦～',style: TextStyle(color: Color(0xff77789C)),))
        ],
      ),
    );
  }
}
