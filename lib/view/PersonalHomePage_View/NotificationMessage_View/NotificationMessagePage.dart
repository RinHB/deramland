import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/safesetstate.dart';
import 'FocusPage.dart';
import 'GiveALikePage.dart';
import 'MessagePage.dart';
import 'NoticePage.dart';

class NotificationMessagePage extends StatefulWidget {
  const NotificationMessagePage({Key? key}) : super(key: key);

  @override
  State<NotificationMessagePage> createState() =>
      _NotificationMessagePageState();
}

class _NotificationMessagePageState extends State<NotificationMessagePage>
    with SingleTickerProviderStateMixin {
  bool notice = true;
  bool giveALike = false;
  bool focus = false;
  bool message = false;
  late TabController _tabController;
  List<Widget> tabController=[
     const NoticePage(),
     const GiveALikePage(),
     const FocusPage(),
     const MessagePage(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的消息'),
        backgroundColor: const Color(0xff0F122A),
        bottom: TabBar(
          indicator: const BoxDecoration(),
          tabs: [
            InkWell(
              child: Column(
                children: [
                  notice
                      ? Image.asset(
                          'assets/images/ParesonalHome/NotificationMessage/noticeOn.png',
                          width: 30,
                          height: 30)
                      : Image.asset(
                          'assets/images/ParesonalHome/NotificationMessage/noticeOff.png',
                          width: 30,
                          height: 30),
                  const Text('通知')
                ],
              ),
            ),
            InkWell(
              child: Column(
                children: [
                  giveALike?
                  Image.asset(
                      'assets/images/ParesonalHome/NotificationMessage/giveALikeOn.png',
                      width: 30,
                      height: 30):
                  Image.asset(
                      'assets/images/ParesonalHome/NotificationMessage/giveALikeOff.png',
                      width: 30,
                      height: 30),
                  const Text('点赞')
                ],
              ),
            ),
            InkWell(
              child: Column(
                children: [
                  focus? Image.asset(
                      'assets/images/ParesonalHome/NotificationMessage/FocusOn.png',
                      width: 30,
                      height: 30):
                  Image.asset(
                      'assets/images/ParesonalHome/NotificationMessage/FocusOff.png',
                      width: 30,
                      height: 30),
                  const Text('关注')
                ],
              ),
            ),
            InkWell(
              child: Column(
                children: [
                  message? Image.asset(
                      'assets/images/ParesonalHome/NotificationMessage/messageOn.png',
                      width: 30,
                      height: 30):
                  Image.asset(
                      'assets/images/ParesonalHome/NotificationMessage/messageOff.png',
                      width: 30,
                      height: 30),
                  const Text('评论')
                ],
              ),
            ),
          ],
          onTap: (index) {
            if (index == 0) {
              safeSetState(() {
                if(!notice){
                  notice = !notice;
                }
                giveALike=false;
                focus=false;
                message=false;
              });
            }
            else if(index == 1){
              safeSetState((){
                if(!giveALike){
                  giveALike = !giveALike;
                }
                notice=false;
                focus=false;
                message=false;
              });
            }
            else if(index == 2){
              safeSetState((){
                if(!focus){
                  focus = !focus;
                }
                notice=false;
                giveALike=false;
                message=false;
              });
            }
            else if(index == 3){
              safeSetState((){
                if(!message){
                  message = !message;
                }
                notice=false;
                giveALike=false;
                focus=false;
              });
            }
          },
          controller: _tabController,
        ),
      ),
      body:  TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: tabController,
      ),
    );
  }
}
