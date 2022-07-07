import 'package:flutter/material.dart';

/// 获取图片资源
class ImageUtil{
  static String getAssets(str){
    return 'assets/images/n_ice_image_source/$str.png';
  }
  //返回icon
  static Widget getAssetsWidget(str){
    return Image.asset(getAssets(str));
  }

  //返回icon
  static Widget getAssetsWidgetBySize(str,double? width,height,{BoxFit? boxFit}){
    return Image.asset(getAssets(str),width: width,height: height,fit: boxFit,);
  }

  //宽高相等的icon
  static Widget getAssetsIcon(str,double size,{Color? color,BoxFit? fit}){
    return Image.asset(ImageUtil.getAssets(str),width: size,height: size,color: color,fit: fit,);
  }

  static String getAssets2(str){
    return 'assets/images/ParesonalHome/$str.png';
  }
  //返回icon
  static Widget getAssetsWidget2(str){
    return Image.asset(getAssets2(str));
  }

  static String getAssetsLog(str){
    return 'assets/images/log/$str.png';
  }
  //返回icon
  static Widget getAssetsWidgetLog(str){
    return Image.asset(getAssetsLog(str));
  }

  static Widget getAssetsWidgetLogBySize(str,double? width,height,{BoxFit? boxFit}){
    return Image.asset(getAssetsLog(str),width: width,height: height,fit: boxFit,);
  }


}