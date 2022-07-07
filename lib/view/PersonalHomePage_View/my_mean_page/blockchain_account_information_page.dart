import 'package:flutter/material.dart';
import 'package:flutter_deramland/utils/common_button.dart';
import 'package:flutter_deramland/utils/common_tips.dart';
import 'package:flutter_deramland/utils/image_config/image_util.dart';

import '../../../tool/appbar.dart';

class BlockchainAccountInformationPage extends StatelessWidget {
  const BlockchainAccountInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F122A),
      appBar: AppBarConfig.getAppBar("区块链账户信息", context,color: const Color(0xFF0F122A)),
      body: Container(
        margin: const EdgeInsets.all(15.0),
        child: Container(
              padding: const EdgeInsets.only(left: 18.0,right: 17.0,top: 23,bottom: 23),
              margin: const EdgeInsets.only(top: 50.0,bottom: 120),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/n_ice_image_source/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  children: <Widget>[
                    CommonTips.commonTipsOne(title: "区块链查证信息", imageName: "3d图"),
                    CommonButton.commonButtonOne("账户信息", onTap: (){
                      Navigator.pushNamed(context, "/BlockChainAccountInformationView");
                    }),
                    CommonButton.commonButtonOne("藏品库", onTap: (){

                    }),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
