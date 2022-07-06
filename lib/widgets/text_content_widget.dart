import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextContentWidget{
  static Widget getTextContentWidget({Widget? child}){
    return Container(
      margin: const EdgeInsets.only(right: 15.0,left: 15.0,top: 15.0),
      height: 120.h,
      decoration: const BoxDecoration(
        color: Color(0xFFFFF6FA),
        borderRadius: BorderRadius.all(Radius.circular(5.0),),
      ),
      child:  child!,
    );
  }
  static Widget getTimeWidget(String? time){
    return Container(
      alignment: Alignment.centerLeft,
      margin:  const EdgeInsets.only(left: 10.0,top: 10.0),
      child:  Text(time!,style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: "PingFang SC",
        fontSize: 15,
        color: Color(0xFF0F122A),
      ),),
    );
  }

  static Widget getContentWidget(){
    return Container(
      alignment: Alignment.centerLeft,
      margin:  const EdgeInsets.only(left: 10.0,top: 10.0),
      child: const SelectableText("data22",style: TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: "PingFang SC",
        fontSize: 15,
        color: Color(0xFF0F122A),
      ),),
    );
  }

  static Widget getTipsWidget(String? title){
    return Container(
      margin:  const EdgeInsets.only(left: 10.0,top: 10.0),
      alignment: Alignment.centerLeft,
      child:  Text(title!,style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: "PingFang SC",
        fontSize: 16,
        color: Color(0xFF77789C),
      ),),
    );
  }

  static Widget getTipsMessage({String? message}){
    return Container(
      alignment: Alignment.center,
      child: Text(message!,style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: "PingFang SC",
        fontSize: 16,
        color: Color(0xFF77789C),
      ),),
    );
  }
}