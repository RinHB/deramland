import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerticalCollectionPage extends StatefulWidget {
  const VerticalCollectionPage({Key? key}) : super(key: key);

  @override
  State<VerticalCollectionPage> createState() => _VerticalCollectionPageState();
}

class _VerticalCollectionPageState extends State<VerticalCollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorTable.deepPurple,
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 240.h,
                width: 180.w,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/collection/verticalBorder.png'),
                        fit: BoxFit.fill)),
                child: Container(
                  margin: EdgeInsets.all(12.r),
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/collection/test3.png',), fit: BoxFit.fill)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 80.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(colors: [ Color(0xffC9B1EE),Color(0xffF9D7F4),Color(0xffB0E9F8), Color(0xffBAB6F6)])
                            ),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                //设置四周圆角 角度
                                borderRadius:const BorderRadius.all( Radius.circular(4.0)),
                                //设置四周边框
                                border: Border.all(width: 1, color: Colors.black),
                              ),
                              child: Column(
                                children:  [
                                  Text('元宇宙的奥秘',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 7.5.sp),),
                                  Expanded(child: Container(width: double.maxFinite,color: Colors.black,child: Center(child: Text('元宇宙的奥秘',style: TextStyle(fontWeight: FontWeight.bold,color: ColorTable.white,fontSize: 8.sp),)))),
                                  Text('贝吉塔行星',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 7.5.sp),)
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 240.h,
                width: 180.w,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/collection/verticalBorder.png'),
                        fit: BoxFit.fill)),
                child: Container(
                    margin: EdgeInsets.all(12.r),
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/collection/test2.png',), fit: BoxFit.fill)
                    ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 80.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(colors: [ Color(0xffC9B1EE),Color(0xffF9D7F4),Color(0xffB0E9F8), Color(0xffBAB6F6)])
                            ),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                //设置四周圆角 角度
                                borderRadius:const BorderRadius.all( Radius.circular(4.0)),
                                //设置四周边框
                                border: Border.all(width: 1, color: Colors.black),
                              ),
                              child: Column(
                                children:  [
                                  Text('元宇宙的奥秘',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 7.5.sp),),
                                  Expanded(child: Container(width: double.maxFinite,color: Colors.black,child: Center(child: Text('元宇宙的奥秘',style: TextStyle(fontWeight: FontWeight.bold,color: ColorTable.white,fontSize: 8.sp),)))),
                                  Text('贝吉塔行星',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 7.5.sp),)
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
