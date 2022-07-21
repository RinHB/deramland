import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../tool/AccordingTheInformation.dart';
import '../../../tool/ColorTable.dart';
class OthersHomepagePage extends StatefulWidget {
  const OthersHomepagePage({Key? key}) : super(key: key);

  @override
  State<OthersHomepagePage> createState() => _OthersHomepagePageState();
}

class _OthersHomepagePageState extends State<OthersHomepagePage> {
  bool loginStatus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/ParesonalHome/backgrounds.png'))),
        child: Column(
          children: [
            SizedBox(height: 60.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Image.asset('assets/images/log/Returnkey.png',width: 20,height: 20,)),
              ],
            ),
            personalHomeHeadFigure(
              '测试',
              '测试',
              'assets/images/ParesonalHome/test.png',
                  () {
                Navigator.pushNamed(context, '/PersonalCollectionDisplayPage');
              },
              loginStatus,
            ),
            Container(
              margin: const EdgeInsets.only(left: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('藏品',style: TextStyle(color: Colors.white
                  ),),
                ],
              ),
            ),
            Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: 100.h,
                      margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorTable.boxBackGroundPurple
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10,top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('测试的展台',style: TextStyle(color: ColorTable.white),),
                                const SizedBox(height: 5),
                                Container(
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      gradient: const LinearGradient(colors: [Color(0xffC9B1EE),Color(0xffF9D7F4),Color(0xffB0E9F8), Color(0xffBAB6F6)])
                                  ),
                                  child: Column(
                                    children: const[
                                      Text('GALLERY',style: TextStyle(color:Colors.black),),
                                      Text('NO.0001111111',style: TextStyle(color:Colors.black),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(margin: const EdgeInsets.only(right: 10),child: Image.asset('assets/images/homePage/test.gif',height: 100,width: 100,))
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 100.h,
                      margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorTable.boxBackGroundPurple
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10,top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('测试的展台',style: TextStyle(color: ColorTable.white),),
                                const SizedBox(height: 5),
                                Container(
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      gradient: const LinearGradient(colors: [Color(0xffC9B1EE),Color(0xffF9D7F4),Color(0xffB0E9F8), Color(0xffBAB6F6)])
                                  ),
                                  child: Column(
                                    children: const[
                                      Text('GALLERY',style: TextStyle(color:Colors.black),),
                                      Text('NO.0001111111',style: TextStyle(color:Colors.black),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(margin: const EdgeInsets.only(right: 10),child: Image.asset('assets/images/homePage/test.gif',height: 100,width: 100,))
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 100.h,
                      margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorTable.boxBackGroundPurple
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10,top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('测试的展台',style: TextStyle(color: ColorTable.white),),
                                const SizedBox(height: 5),
                                Container(
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      gradient: const LinearGradient(colors: [Color(0xffC9B1EE),Color(0xffF9D7F4),Color(0xffB0E9F8), Color(0xffBAB6F6)])
                                  ),
                                  child: Column(
                                    children: const[
                                      Text('GALLERY',style: TextStyle(color:Colors.black),),
                                      Text('NO.0001111111',style: TextStyle(color:Colors.black),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(margin: const EdgeInsets.only(right: 10),child: Image.asset('assets/images/homePage/test.gif',height: 100,width: 100,))
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 100.h,
                      margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorTable.boxBackGroundPurple
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10,top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('测试的展台',style: TextStyle(color: ColorTable.white),),
                                const SizedBox(height: 5),
                                Container(
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      gradient: const LinearGradient(colors: [Color(0xffC9B1EE),Color(0xffF9D7F4),Color(0xffB0E9F8), Color(0xffBAB6F6)])
                                  ),
                                  child: Column(
                                    children: const[
                                      Text('GALLERY',style: TextStyle(color:Colors.black),),
                                      Text('NO.0001111111',style: TextStyle(color:Colors.black),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(margin: const EdgeInsets.only(right: 10),child: Image.asset('assets/images/homePage/test.gif',height: 100,width: 100,))
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 100.h,
                      margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorTable.boxBackGroundPurple
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10,top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('测试的展台',style: TextStyle(color: ColorTable.white),),
                                const SizedBox(height: 5),
                                Container(
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      gradient: const LinearGradient(colors: [Color(0xffC9B1EE),Color(0xffF9D7F4),Color(0xffB0E9F8), Color(0xffBAB6F6)])
                                  ),
                                  child: Column(
                                    children: const[
                                      Text('GALLERY',style: TextStyle(color:Colors.black),),
                                      Text('NO.0001111111',style: TextStyle(color:Colors.black),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(margin: const EdgeInsets.only(right: 10),child: Image.asset('assets/images/homePage/test.gif',height: 100,width: 100,))
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
