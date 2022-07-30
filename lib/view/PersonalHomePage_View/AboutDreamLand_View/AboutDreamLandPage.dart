import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../tool/AccordingTheInformation.dart';
import '../../../tool/ButtonCollection.dart';
import '../../../tool/ColorTable.dart';

class AboutDreamLandPage extends StatefulWidget {
  const AboutDreamLandPage({Key? key}) : super(key: key);

  @override
  State<AboutDreamLandPage> createState() => _AboutDreamLandPageState();
}

class _AboutDreamLandPageState extends State<AboutDreamLandPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
        title: Text('关于', style: TextStyle(color: ColorTable.white)),
      ),
      body: Container(
        color:ColorTable.deepPurple,
        width: double.maxFinite,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              width: 90.w,
                height: 70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        width: 1, color: const Color(0xffffffff)),
                  image:const DecorationImage(image:  AssetImage('assets/images/log/deramlandlog.png'),fit: BoxFit.cover)
                ),
            ),
            const SizedBox(height: 10),
            Text('梦境之谷',style: TextStyle(color: ColorTable.white,fontSize: 18.sp),),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorTable.boxBackGroundPurple
              ),
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child:InkWell(
                        onTap: (){

                        },
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                                child: Text('版本更新',
                                    style: TextStyle(color: Colors.white, fontSize: 15))),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text('已经是最新版本了',style: TextStyle(color: ColorTable.tipColor,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Image.asset(
                                  'assets/images/ParesonalHome/Component_8_Property1_right.png',
                                  width: 10),
                            )
                          ],
                        )),
                  ),
                  Container(margin: const EdgeInsets.only(left: 10,right: 15,top: 8),child: splitLineFigure()),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: personalHomePageButton('协议规则中心', () {

                    }),
                  ),
                  Container(margin: const EdgeInsets.only(left: 10,right: 15,top: 8),child: splitLineFigure()),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: personalHomePageButton('平台资质证照', () {

                    }),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: (){}, child: Text('《用户服务协议》',style: TextStyle(color: ColorTable.tipColor),)),
                        Text('和',style: TextStyle(color: ColorTable.tipColor),),
                        TextButton(onPressed: (){}, child: Text('《隐私权政策》',style: TextStyle(color: ColorTable.tipColor),)),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
