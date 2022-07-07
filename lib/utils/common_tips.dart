import 'package:flutter/material.dart';
import 'package:flutter_deramland/utils/image_config/image_util.dart';

class CommonTips{
  static Widget commonTipsOne({required String title,required String imageName}){
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          ImageUtil.getAssetsWidgetLogBySize(imageName,150.0,150.0,boxFit:BoxFit.cover),
          Text(title,style: const TextStyle(
            color: Color(0xFFFF0860),
            fontFamily: "PingFang SC",
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),),
        ],
      ),
    );
  }
}