import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_deramland/view/Tab/tabs.dart';

class StarPage extends StatefulWidget {
  const StarPage({Key? key}) : super(key: key);

  @override
  State<StarPage> createState() => _StarPageState();
}

class _StarPageState extends State<StarPage> {
  int _countdown = 50;
  Timer? _timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer= Timer.periodic(
        const Duration(milliseconds: 1000),
            (timer) {
          setState(() {
            --_countdown;
          });
          if(_countdown==0){
            _jumpRootPage();
          }
        });
  }
  void _jumpRootPage(){
    _timer!.cancel();
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=> const Tabs()
    ), (route) => false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/log/startPage.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
              top: MediaQuery.of(context).padding.top+10,
              right: 10,
              child: InkWell(
                onTap: _jumpRootPage,
                child: _chiButton(),
              )
          )
        ],
      ),
    );
  }
  Widget _chiButton() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 50,
        height: 50,
        color: ColorTable.tipColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("跳过",style: TextStyle(
                color: Colors.white70,
                fontSize: 12
            ),
            ),
            Text("${_countdown}S",style: const TextStyle(
                color: Colors.white70,
                fontSize: 12
            ),
            ),
          ],
        ),
      ),
    );
  }
}


