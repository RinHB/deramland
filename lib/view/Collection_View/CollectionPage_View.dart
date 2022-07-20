import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'HorizontalCollectionPage.dart';
import 'VerticalCollectionPage.dart';
class CollectionPage extends StatefulWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Tab> tabs = [
    const Tab(text: '横版藏品10'),
    const Tab(text: '竖版藏品${01}'),
  ];
  List<Widget> tabController=[
    const HorizontalCollectionPage(),
    const VerticalCollectionPage(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
        length: tabs.length,
        initialIndex: 0,
        vsync: this
    );
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
        backgroundColor: ColorTable.deepPurple,
        elevation: 0,
        toolbarHeight: 135.h,
        flexibleSpace: Container(
          height:200.h,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/collection/collectiblesBackground.png'),fit: BoxFit.cover)
          ),
        ),
        title: Column(
          children: [
            Container(
              width: 150.w,
              height: 35.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  gradient: const LinearGradient(colors: [ Color(0xffC9B1EE),Color(0xffF9D7F4),Color(0xffB0E9F8), Color(0xffBAB6F6)])
              ),
              child: Center(child: Text('嘻嘻的展馆',style: TextStyle(color: Colors.black,fontSize: 16.sp),)),
            ),
            SizedBox(height:55.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  width:140.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      gradient: const LinearGradient(colors: [ Color(0xffC9B1EE),Color(0xffF9D7F4),Color(0xffB0E9F8), Color(0xffBAB6F6)])
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('GALLERY',style: TextStyle(color: Colors.black,fontSize: 13.sp)),
                      Text('NO.0012141027',style: TextStyle(color: Colors.black,fontSize: 13.sp))
                    ],
                  )
                ),
              ],
            )
          ],
        ),
        bottom:TabBar(
          indicator: const BoxDecoration(),
          tabs: tabs,
          padding: const EdgeInsets.only(right: 150),
          controller: _tabController,
          indicatorSize:TabBarIndicatorSize.label,
        ),
      ),
      body:TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: tabController,
      )
    );
  }
}
