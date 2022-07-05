import 'package:flutter/material.dart';

class AppBarConfig{

  static AppBar getAppBar(String? title,BuildContext context,{Function? onTap,required Color color}){
    return AppBar(
      backgroundColor: color,
      brightness: Brightness.light,
        centerTitle: true,
        elevation: 0,
        leading: Center(
          child: InkWell(onTap: (){
          if(onTap!=null){
            onTap();
          }else{
            Navigator.pop(context);
          }
        }, child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Icon(Icons.arrow_back_ios_sharp,size: 22,),
        ),
        ),
        ),
        title: Text('$title',style: const TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.w400,
        ),),
    );
  }
}
