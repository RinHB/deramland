import 'package:flutter/material.dart';

import '../../tool/AccordingTheInformation.dart';
class SwitchThemePage extends StatefulWidget {
  const SwitchThemePage({Key? key}) : super(key: key);

  @override
  State<SwitchThemePage> createState() => _SwitchThemePageState();
}

class _SwitchThemePageState extends State<SwitchThemePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('选择主题封面'),
        backgroundColor: const Color(0xff0F122A),
      ),
      body: Container(
        color:  const Color(0xff0F122A),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            const SizedBox(height:35),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 const SizedBox(),
                 switchThemeFigure(
                     'assets/images/ParesonalHome/1.png',
                     (){}
                 ),
                 switchThemeFigure(
                     'assets/images/ParesonalHome/2.png',
                      (){}
                 ),
                 switchThemeFigure(
                     'assets/images/ParesonalHome/3.png',
                      (){}
                 ),
                 const SizedBox(),
               ],
             ),
            const SizedBox(height:15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                switchThemeFigure(
                    'assets/images/ParesonalHome/4.png',
                        (){}
                ),
                switchThemeFigure(
                    'assets/images/ParesonalHome/5.png',
                        (){}
                ),
                switchThemeFigure(
                    'assets/images/ParesonalHome/6.png',
                        (){}
                ),
                const SizedBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
