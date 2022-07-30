import 'package:flutter/material.dart';
import 'package:flutter_deramland/model/user_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({Key? key}) : super(key: key);

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('二维码名片'),
        backgroundColor: const Color(0xff0F122A),
      ),
      body: Container(
        color: const Color(0xff0F122A),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              ClipOval(
                child: Image.asset('assets/images/ParesonalHome/test.png',width: 80,height: 80),
              ),
              const SizedBox(height: 10),
              Consumer<UserModel>(builder: (_, userModel, Widget? child) {
                return Text(userModel.nickName,style: TextStyle(color: Colors.white,fontSize: 17),);
              },
              ),
              const SizedBox(height: 20),
              Container(
                width: 350.w,
                height: 350.h,
                decoration: const BoxDecoration(
                  color: Color(0Xff2B1A3D),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/ParesonalHome/QrCode.png',width: 300,height: 300)
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text('扫一扫上面的二维码图案',style: TextStyle(color: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
