import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../tool/appbar.dart';
import '../../../../utils/common_button.dart';
import '../../../../utils/common_tips.dart';
import '../../../../widgets/text_content_widget.dart';

class BlockChainAccountInformationView extends StatefulWidget {
  const BlockChainAccountInformationView({Key? key}) : super(key: key);

  @override
  State<BlockChainAccountInformationView> createState() => _BlockChainAccountInformationViewState();
}

class _BlockChainAccountInformationViewState extends State<BlockChainAccountInformationView> {

  bool? showAccountInfo;
  bool? showProductInfo;
  @override
  void initState() {
    // TODO: implement initState
     showAccountInfo=false;
     showProductInfo=false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F122A),
      appBar: AppBarConfig.getAppBar("区块链账户信息", context,color: const Color(0xFF0F122A)),
      body: Container(
        width: (MediaQuery.of(context).size.width-20).w,
        padding: const EdgeInsets.only(left: 20.0,right: 18.0,top: 28,bottom: 28),
        margin: const EdgeInsets.only(top: 30.0,bottom: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/n_ice_image_source/background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: ListView(
            children: <Widget>[
              CommonTips.commonTipsOne(title: "区块链查证信息", imageName: "3d图"),
              CommonButton.commonButtonTow("账户信息",showInfo: showAccountInfo, onTap: (){
                setState((){
                  showAccountInfo=!showAccountInfo!;
                });
              }),
              if(showAccountInfo!)TextContentWidget.getTextContentWidget(child:Column(children: [
                TextContentWidget.getTipsWidget("区块链地址"),
                TextContentWidget.getContentWidget(),
                TextContentWidget.getTipsWidget("注册时间"),
                TextContentWidget.getTimeWidget("2022-07-06 15:30:00")
              ],),),
              CommonButton.commonButtonTow("藏品库",number: 6,showInfo: showProductInfo, onTap: (){
                setState((){
                  showProductInfo=!showProductInfo!;
                });
              }),
              if(showProductInfo!)TextContentWidget.getTextContentWidget(
                  child: TextContentWidget.getTipsMessage(message: "暂无内容"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
