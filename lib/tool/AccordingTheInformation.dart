import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//头部显示
Widget headFigure(){
  return Column(
    children: [
      const SizedBox(height: 40),
      Image.asset('assets/images/log/3d图.png', width: 175.w),
      Text('欢迎来到DreamLand', style: TextStyle(fontSize: 25.sp, color: Colors.white)),
      const Text('发现有趣的商品', style: TextStyle(color: Colors.white)),
    ],
  );
}

//个人主页头像显示
Widget personalHomeHeadFigure(String loginName,String phone,String image,VoidCallback voidCallback){
  return Row(
    children: [
      const SizedBox(width: 20),
      SizedBox(
        width: 70,
        height: 70,
        child: IconButton(
          onPressed:voidCallback,
          icon: Image.asset(image),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text(loginName,style: const TextStyle(color: Colors.white,fontSize: 20)),
          const SizedBox(height: 5),
          Text(phone,style: const TextStyle(color: Colors.white))
        ],
      )
    ],

  );
}

//个人信息显示
Widget personalInformationListFigure(String personalInformation,Widget according){
  return Column(
    children: [
      const SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(personalInformation,style: const TextStyle(color: Colors.white),),
            according,
          ],
        ),
      ),
      const SizedBox(height: 10,),
      Container(
        margin: const EdgeInsets.only(right: 20,left: 20),
        decoration: const BoxDecoration(
            border:Border(bottom:BorderSide(width: 1,color: Color(0xffe5e5e5)) )
        ),
      ),
      const SizedBox(height: 10,),
    ],
  );
}

//主题页选择
Widget switchThemeFigure(String imageName,GestureTapCallback onTap){
  return  InkWell(
    onTap:onTap,
    child: Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
            image:  AssetImage(imageName),
            fit: BoxFit.cover
          )
      ),
    ),
  );
}