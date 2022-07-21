import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalCollectionPage extends StatefulWidget {
  const HorizontalCollectionPage({Key? key}) : super(key: key);

  @override
  State<HorizontalCollectionPage> createState() =>
      _HorizontalCollectionPageState();
}

class _HorizontalCollectionPageState extends State<HorizontalCollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorTable.deepPurple,
      child: ListView(
        children: [
          Container(
            width: 200.w,
            height: 200.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/collection/collectionBorder.png'),
                    fit: BoxFit.fill)),
            child: Container(
                margin: const EdgeInsets.only(left: 15, right: 25, top: 30, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(image: AssetImage('assets/images/ParesonalHome/test1.png'),fit: BoxFit.fill)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 100.w,
                          height: 55.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(colors: [ Color(0xffC9B1EE),Color(0xffF9D7F4),Color(0xffB0E9F8), Color(0xffBAB6F6)])
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              //设置四周圆角 角度
                              borderRadius:const BorderRadius.all( Radius.circular(4.0)),
                              //设置四周边框
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            child: Column(
                              children:  [
                                Text('元宇宙的奥秘',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9.5.sp),),
                                Expanded(child: Container(width: double.maxFinite,color: Colors.black,child: Center(child: Text('元宇宙的奥秘',style: TextStyle(fontWeight: FontWeight.bold,color: ColorTable.white,fontSize: 10.sp),)))),
                                Text('贝吉塔行星',style: TextStyle(fontWeight: FontWeight.bold,fontSize:9.5.sp),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
          )
        ],
      ),
    );
  }
}
