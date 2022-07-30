import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//输入框
Widget inputBox(String hint,Color colors,Color color,{TextEditingController? phoneInput,TextInputType? textInputType}){
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Flex(
      direction: Axis.horizontal,
      children: [
        const SizedBox(height: 50,),
        SizedBox(
          width: 312.w,
          height: 35.h,
          child: TextFormField(
            controller: phoneInput,
            keyboardType: textInputType,
            style:  TextStyle(color: colors),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle:  TextStyle(color: colors,fontSize: 15),
              enabledBorder:  UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: color
                  )
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

//输入手机号框
Widget phoneInputBox({Widget? phoneSelectBox,TextEditingController? phoneInput}){
  return Row(
    children: [
      SizedBox(
          width: 310.w,
          height: 26.h,
          child: TextFormField(
            controller: phoneInput,
            style: const TextStyle(color: Colors.white),
            keyboardType: TextInputType.emailAddress,
            decoration:  InputDecoration(
              hintText: '请输入手机号',
              hintStyle: TextStyle(color: Colors.white,fontSize: 12.sp),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white

                  )
              ),
              prefixIcon:phoneSelectBox
            ),
          )
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}

//修改密码输入框
Widget changePasswordInputBox(String hint,{Widget? phoneSelectBox,TextEditingController? phoneInput,bool textVisible=false}){
  return Row(
    children: [
      SizedBox(
          width: 310.w,
          height: 26.h,
          child: TextFormField(
            controller: phoneInput,
            obscureText: textVisible,
            style: const TextStyle(color: Colors.white),
            keyboardType: TextInputType.emailAddress,
            decoration:  InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(color: ColorTable.tipColor,fontSize: 15.sp),
                enabledBorder:  UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorTable.tipColor
                    )
                ),
                prefixIcon:phoneSelectBox,

            ),
          )
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}