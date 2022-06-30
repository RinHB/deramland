import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// 渐变色按钮
Widget gradientButtons(String text,Color color,Color colors,VoidCallback voidCallback) {
  return Container(
    margin: const EdgeInsets.fromLTRB(30,35, 30, 0),
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: [color,colors]), // 渐变色
        borderRadius: BorderRadius.circular(25)),
    child: ElevatedButton(
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
          backgroundColor: MaterialStateProperty.all(Colors.transparent)),
      onPressed: voidCallback,
      child: Container(
        alignment: Alignment.center,
        height: 50.h,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ),

  );
}
