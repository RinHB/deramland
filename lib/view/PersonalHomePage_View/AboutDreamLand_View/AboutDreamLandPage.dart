import 'package:flutter/material.dart';

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
            SizedBox(height: 10),
            Image.asset('assets/images/homePage/test.gif'),
            SizedBox(height: 10),
            Text('Dream Land',style: TextStyle(color: ColorTable.white),),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorTable.boxBackGroundPurple
              ),
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: personalHomePageButton('版本更新', () {

                    }),
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
