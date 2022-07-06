import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/appbar.dart';
import 'package:flutter_deramland/utils/image_config/image_util.dart';
import '../../../tool/ButtonCollection.dart';

class BlockChainSelectPage extends StatefulWidget {
  const BlockChainSelectPage({Key? key}) : super(key: key);

  @override
  State<BlockChainSelectPage> createState() => _BlockChainSelectPageState();
}

class _BlockChainSelectPageState extends State<BlockChainSelectPage> {

  bool? showSelect=false;
  TextEditingController? selectContentController=TextEditingController();
  back(){
    setState((){});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F122A),
      appBar: AppBarConfig.getAppBar("区块链信息查询", context,color: const Color(0xFF0F122A)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(margin: const EdgeInsets.only(bottom: 60),child: gradientButtons(
          '查询', const Color(0xFFFF0860), const Color(0xFF333773), () {
            showSelect=!showSelect!;
            back();
      }
      ),),
      body: ListView(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 15.0,right: 15.0,top: 50.0),
              child: Column(
                children: <Widget> [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: const Text("请输入哈希值(含区块链地址)",style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontFamily: "PingFang SC",
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 40.0),
                    child: const Text("支持藏品、账户相关区块链信息查询",style: TextStyle(
                      color: Color(0xFF77789C),
                      fontSize: 14.0,
                      fontFamily: "PingFang SC",
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                Container(
                  margin: const EdgeInsets.only(bottom: 60.0),
                  color: const Color(0xff201735),
                  child:  TextField(
                    maxLines: 4,
                    controller: selectContentController,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: "PingFang SC",
                      fontWeight: FontWeight.w400,
                    ),
                    decoration:const InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: "PingFang SC",
                        fontWeight: FontWeight.w400,
                      ),
                        hintText:"请输入查询内容",
                        border:OutlineInputBorder()
                    ),
                  ),
                ),
                  if(showSelect!)Container(
                    alignment: Alignment.center,
                    child: Column(
                      children:  <Widget>[
                        ImageUtil.getAssetsWidget("without"),
                         Container(
                           margin: const EdgeInsets.only(top: 20.0),
                           child:  const Text("未查询到对应的区块链信息",style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontFamily: "PingFang SC",
                            fontWeight: FontWeight.w400,
                        ),),
                         ),
                      ],
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
