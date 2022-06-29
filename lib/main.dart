import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deramland/tool/Routers.dart';
import 'package:flutter_deramland/view/staring_view/agreementView.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //不加这个强制横/竖屏会报错
  SystemChrome.setPreferredOrientations([
    // 强制竖屏
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}
Routers _routers= Routers();
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, //去除Debug标识
      home: AgreementView(),
      onGenerateRoute: _routers.getRoutes,
      theme: ThemeData(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent
      ),
    );
  }
}

