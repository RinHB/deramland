import 'package:flutter/material.dart';

class CommonButton{
  static Widget commonButtonOne(String? title,{required Function onTap}){
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: (){
        onTap();
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title!,style: const TextStyle(
              color: Color(0xFF0F122A),
              fontSize: 18.0,
              fontFamily: "PingFang SC",
              fontWeight: FontWeight.w400,
            ),),
            const Icon(Icons.keyboard_arrow_right_sharp,color: Color(0xFF77789C),size: 30,)
          ],
        ),
      ),
    );
  }
  static Widget commonButtonTow(String? title,{int? number=-1,required Function onTap,bool? showInfo=false}){
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: (){
        onTap();
      },
      child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(right: 10),
                    child: Text(title!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                      color: Color(0xFF0F122A),
                      fontSize: 18.0,
                      fontFamily: "PingFang SC",
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                  if(number!=-1)Container(
                    padding: const EdgeInsets.all(5),
                    child: Text(number.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                      color: Color(0xFF77789C),
                      fontSize: 16.0,
                      fontFamily: "PingFang SC",
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                ],
              ),
                Container(
                  alignment: Alignment.center,
                    child:  Icon(showInfo!?Icons.expand_more_outlined:Icons.keyboard_arrow_right_sharp,color: const Color(0xFF77789C),size: 30,),
                ),
            ],
          ),
      ),
    );
  }
}