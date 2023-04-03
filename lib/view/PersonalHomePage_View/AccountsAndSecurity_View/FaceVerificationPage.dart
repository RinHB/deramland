import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../tool/ColorTable.dart';
class FaceVerificationPage extends StatefulWidget {
  const FaceVerificationPage({Key? key}) : super(key: key);

  @override
  State<FaceVerificationPage> createState() => _FaceVerificationPageState();
}

class _FaceVerificationPageState extends State<FaceVerificationPage> {
  bool selected =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
        title: const Text('人脸验证'),
      ),
      body: Container(
        width: double.maxFinite,
        color: ColorTable.deepPurple,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(margin: const EdgeInsets.all(20),child: Text('人脸识别功能验证你的身份信息,请确保是run本人操作',style: TextStyle(color: ColorTable.white,fontSize: 20.sp),)),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      height: 35.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                        gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFF0860),
                              Color(0xFF333773),
                            ]
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:Center(child: Text('开始验证',style: TextStyle(color: ColorTable.white,fontSize: 17.sp),)),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 35),
                        child: IconButton(
                            onPressed: (){
                              setState((){
                                selected =!selected;
                              });
                            },
                            icon: selected?Image.asset('assets/images/log/selected.png',height: 15.h,):Image.asset('assets/images/log/No selected.png',height: 15.h,)
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                            children: [
                              TextSpan(text: '我已阅读并同意'),
                              TextSpan(text: '用户协议',style: TextStyle(color: Colors.pinkAccent)),
                              TextSpan(text: '和'),
                              TextSpan(text: '隐私政策',style: TextStyle(color: Colors.pinkAccent)),
                            ]
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 50)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
