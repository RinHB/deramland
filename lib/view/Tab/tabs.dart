import 'package:flutter/material.dart';
import 'package:flutter_deramland/view/Collection_View/CollectionPage_View.dart';
import 'package:flutter_deramland/view/Home_View/HomePageView.dart';
import 'package:flutter_deramland/view/PersonalHomePage_View/PersonalHomePage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proste_indexed_stack/proste_indexed_stack.dart';
class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  late final List<IndexedStackChild> _pageList= [
    IndexedStackChild(
        child: const HomePage()
    ),
    IndexedStackChild(
        child:  const CollectionPage()
    ),
    IndexedStackChild(
        child:const PersonalHomePage()
    ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bottomName.forEach((key, value) {
      bottomNavBarList.add(bottomNavigationBar(key, value));
    });
  }
  //底部导航组件
  BottomNavigationBarItem bottomNavigationBar(String key, String value) {
    return BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/tabs/$key.png',
          height: 25,
          width: 25,
          excludeFromSemantics: true,//去除图片语义
          gaplessPlayback: true,//重新加载图片的过程中，原图片的展示是否保留
        ),
        activeIcon: Image.asset(
          'assets/images/tabs/$key-checked.png',
          height: 25,
          width: 25,
          excludeFromSemantics: true,//去除图片语义
          gaplessPlayback: true,//重新加载图片的过程中，原图片的展示是否保留
        ),
        label: value
    );
  }
  //页面集合
  final Map _bottomName = {
    "HomePage": "首页",
    "CollectionPage": "藏品",
    'PersonalHomePage': '我的',
  };

  List<BottomNavigationBarItem> bottomNavBarList = [];
  //底部切换
  void _TabClick(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: ProsteIndexedStack(
        index: _currentIndex,
        children: _pageList,
      ),
      bottomNavigationBar: Theme(
        data:  ThemeData(
          brightness: Brightness.light,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          //选中时的颜色
          selectedItemColor: Colors.white,
          //未选中的颜色
          unselectedItemColor: const Color(0xff77789C),
          //背景颜色
          backgroundColor:const Color(0xff161B42) ,
          items: bottomNavBarList,
          currentIndex: _currentIndex,
          onTap:_TabClick,
        ),
      ),
    );
  }
}
