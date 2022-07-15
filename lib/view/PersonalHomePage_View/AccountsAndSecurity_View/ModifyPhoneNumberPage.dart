import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModifyPhoneNumberPage extends StatefulWidget {
  final String? phone;
  const ModifyPhoneNumberPage({Key? key,this.phone}) : super(key: key);

  @override
  State<ModifyPhoneNumberPage> createState() => _ModifyPhoneNumberPageState();
}

class _ModifyPhoneNumberPageState extends State<ModifyPhoneNumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: ColorTable.deepPurple,
       title: Text('账号与安全', style: TextStyle(color: ColorTable.white)),
     ),
     body:Container(
       color: ColorTable.deepPurple,
       child: Center(
         child: Column(
             children: [
               Image.asset('assets/images/homePage/test.gif', width: 155.w),
               const SizedBox(height: 10),
               Text('绑定手机号', style: TextStyle(fontSize: 15.sp, color: ColorTable.tipColor)),
               const SizedBox(height: 5),
               Text('${widget.phone}', style: TextStyle(color: Colors.white,fontSize: 18.sp)),
               const SizedBox(height: 5),
               Text('手机号可用于登录和密码找回', style: TextStyle(fontSize: 15.sp, color: ColorTable.tipColor)),
               SizedBox(height: 70.h),
               InkWell(
                 onTap: (){
                   Navigator.pushNamed(context, '/VerifyMobilePhoneNumberPage');
                 },
                 child: Container(
                   height: 45.h,
                   width: 290.w,
                   decoration: BoxDecoration(
                       color: Colors.transparent,
                       borderRadius: BorderRadius.circular(30),
                       border: Border.all(width: 1,color: const Color(0xffffffff))
                   ),
                   child:const Center(child: Text('更换手机号',style: TextStyle(color: Colors.white),)),
                 ),
               )
             ],
         ),
       ),
     ),
    );
  }
}
