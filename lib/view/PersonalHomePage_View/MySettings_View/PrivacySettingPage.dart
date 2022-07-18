import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/safesetstate.dart';

import '../../../tool/AccordingTheInformation.dart';
import '../../../tool/ButtonCollection.dart';
import '../../../tool/ColorTable.dart';

class PrivacySettingPage extends StatefulWidget {
  const PrivacySettingPage({Key? key}) : super(key: key);

  @override
  State<PrivacySettingPage> createState() => _PrivacySettingPageState();
}

class _PrivacySettingPageState extends State<PrivacySettingPage> {
  bool personalizedContentRecommendations = false;
  bool whetherToShow =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
        title: Text('隐私设置'),
      ),
      body: Container(
        color: ColorTable.deepPurple,
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: ColorTable.boxBackGroundPurple,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mySettingsPageButton('个性化内容推荐', () {
                    safeSetState(() {
                      personalizedContentRecommendations = !personalizedContentRecommendations;
                    });
                  }, personalizedContentRecommendations),
                  splitLineFigure(),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '功能说明',
                          style: TextStyle(color: ColorTable.white),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '个性化内容推荐是一种常见、通用的、安全的数据推荐技术，我们会收集、通过你在使用我们的服务时产生的相关信息（使用记录、使用偏好等特征），向你展示、推荐你可能更感兴趣的内容，以便更好的为你服务。',
                          style: TextStyle(color: ColorTable.tipColor),
                        ),
                        Text('关闭个性化内容推荐的效果',
                            style: TextStyle(color: ColorTable.white)),
                        SizedBox(height: 5),
                        Text(
                            '我们严格执行法律及相关规定，尊重并保护你的隐私，你可以通过页面所示个性化内容推荐服务开关管理你的个性化推荐内容；如你的不希望使用个性化推荐服务，在你关闭该功能后，我们将基于内容热度等非个性化因素向你展示内容，你可能会看到不符合你的喜好需求的内容，从而影响你的使用体验。',
                            style: TextStyle(color: ColorTable.tipColor)),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: ColorTable.boxBackGroundPurple,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  mySettingsPageButton('展示拥有藏品数量', () {
                    safeSetState(() {
                      whetherToShow = !whetherToShow;
                    });
                  }, whetherToShow),
                  splitLineFigure(),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        Text(
                          '打开后访客可查看到你持有的藏品数量',
                          style: TextStyle(color: ColorTable.tipColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
