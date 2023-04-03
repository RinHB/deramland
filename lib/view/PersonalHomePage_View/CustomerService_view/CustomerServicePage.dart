import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_deramland/entity/Message.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomerServicePage extends StatefulWidget {
  const CustomerServicePage({Key? key}) : super(key: key);

  @override
  State<CustomerServicePage> createState() => _CustomerServicePageState();
}

class _CustomerServicePageState extends State<CustomerServicePage> {
  final TextEditingController _input=TextEditingController();
  bool emoji=true;
  bool sendStatus= true;
  //响应空白处的焦点的Nodew
  FocusNode blankNode = FocusNode();
  List<Message> messages = [
    Message(
        text: '1',
        nickName:'客服' ,
        isSentByMe: false,
        messageType: MessageType.text,
        messageStatus: MessageStatus.viewed,
    ),
    Message(
        text: '2',
        nickName: '',
        messageType: MessageType.text,
        messageStatus: MessageStatus.notSent,
        isSentByMe: true
    ),
    Message(
        text: '',
        nickName: '',
        messageType: MessageType.image,
        messageStatus: MessageStatus.viewed,
        isSentByMe: true
    ),
  ].reversed.toList();
  // _emoJiList() {
  //   if (!emoji || _commentFocus.hasFocus) {
  //     return Container();
  //   } else {
  //     return FutureBuilder(
  //         future: DefaultAssetBundle.of(context)
  //             .loadString("assets/emoji_list.json"),
  //         builder: (context, snapshot) {
  //           if (snapshot.hasData) {
  //             List<dynamic> data = json.decode(snapshot.data.toString());
  //             return Stack(
  //               children: <Widget>[
  //                 Container(
  //                   height: 200,
  //                   padding:
  //                   const EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
  //                   color: Colors.white,
  //                   child: GridView.custom(
  //                     padding: EdgeInsets.all(3),
  //                     shrinkWrap: true,
  //                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //                       crossAxisCount: 6,
  //                       mainAxisSpacing: 0.5,
  //                       crossAxisSpacing: 6.0,
  //                     ),
  //                     childrenDelegate: SliverChildBuilderDelegate(
  //                           (context, index) {
  //                         return GestureDetector(
  //                           onTap: () {
  //                             String inputString =_input.text.toString();
  //                             inputString = inputString + String.fromCharCode(data[index]["unicode"]);
  //                             setState(() {});
  //                           },
  //                           child: Center(
  //                             child: Text(
  //                               String.fromCharCode(data[index]["unicode"]),
  //                               style: TextStyle(fontSize: 33),
  //                             ),
  //                           ),
  //                         );
  //                       },
  //                       childCount: data.length,
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             );
  //           }
  //           return const CircularProgressIndicator();
  //         });
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('客服'),
        backgroundColor: ColorTable.deepPurple,
      ),
      body: GestureDetector(
        onTap: (){
          // 点击空白页面关闭键盘
          blankNode.unfocus();
          setState(() {
            emoji=true;
          });
        },
        child: Container(
            color: ColorTable.deepPurple,
            child: Column(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: ListView.builder(
                          itemCount:messages.length ,
                          itemBuilder:(context,index)=>Messages(message: messages[index],)
                      ),
                    )
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorTable.boxBackGroundPurple,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                        const EdgeInsets.only(left: 10, right: 10, top: 5,bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xFF0F122A),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        width: 240.w,
                        child: Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: TextField(
                              focusNode: blankNode,
                              onTap: (){
                                setState(() {
                                  emoji=true;
                                });
                              },
                              onChanged: (v){
                                if(sendStatus && _input.text.isNotEmpty){
                                  setState(() {
                                    sendStatus=!sendStatus;
                                  });
                                }else if(!sendStatus && _input.text.isEmpty){
                                  setState(() {
                                    emoji=true;
                                    sendStatus=!sendStatus;
                                  });
                                }
                              },
                              controller: _input,
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  )),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              emoji=!emoji;
                            });
                            blankNode.unfocus();
                            blankNode.canRequestFocus=false;
                          },
                          child: Image.asset('assets/images/ParesonalHome/expression.png',width: 30,height: 30,),
                        ),
                      ),
                      sendStatus?const SizedBox(width: 15,):Container(width: 5,),
                      sendStatus? Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: InkWell(
                          onTap: (){},
                          child: Image.asset('assets/images/ParesonalHome/addTo.png',width: 30,height: 30,),
                        ),
                      ):
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: ElevatedButton(
                            onPressed: () {
                              final message = Message(
                                  text: _input.text.toString(),
                                  nickName: '',
                                  isSentByMe: true,
                                  messageType: MessageType.text,
                                  messageStatus: MessageStatus.notSent);
                              _input.text='';
                              FocusScope.of(context).requestFocus(FocusNode());//关闭键盘
                              setState(() {
                                sendStatus=!sendStatus;
                                emoji=true;
                                messages.add(message);
                              });
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.pinkAccent),
                                shape: MaterialStateProperty.all(
                                    const StadiumBorder(
                                        side: BorderSide(
                                          //设置 界面效果
                                          style: BorderStyle.solid,
                                        )))),
                            child: const Text('发送')),
                      ),
                    ],
                  ),
                ),
                AnimatedContainer(
                  duration:const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  child: Offstage(
                    offstage: emoji,
                    child: const SizedBox(
                      height: 300,
                    ),
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}

class Messages extends StatelessWidget{
  const Messages({Key? key,required this.message}) : super(key: key);
  final Message message;
  @override
  Widget build(BuildContext context) {
    Widget messageContent(Message message){
      switch(message.messageType){
        case MessageType.text:
          return TextMessages(message: message,);
        case MessageType.image:
          return ImagesMessages(message: message,);
        default:return const SizedBox();
      }
    }
    // TODO: implement build
    return Row(
      mainAxisAlignment: message.isSentByMe?MainAxisAlignment.end:MainAxisAlignment.start,
      children:  [
        if(!message.isSentByMe)...[
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/ParesonalHome/test.png'),
          )
        ],
        const SizedBox(width: kDefaultPadding/2,),
        SizedBox(width: 250,child: messageContent(message)),
        const SizedBox(width: kDefaultPadding/2,),
        if(message.isSentByMe)...[
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/ParesonalHome/test.png'),
          )
        ]
      ],
    );
  }
}

class TextMessages extends StatelessWidget {
  const TextMessages({
    Key? key,this.message
  }) : super(key: key);
  final Message? message;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding/2),
      child: Column(
        crossAxisAlignment: message!.isSentByMe?CrossAxisAlignment.end:CrossAxisAlignment.start,
        children: [
          if(!message!.isSentByMe)...[
            Container(margin: const EdgeInsets.only(right: kDefaultPadding/2),child: Text(message!.nickName,style: TextStyle(color: ColorTable.tipColor),)),
          ],
          Container(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding*0.75,
                vertical: kDefaultPadding/2
              ),
              decoration: BoxDecoration(color:message!.isSentByMe?Colors.teal:ColorTable.tipColor,borderRadius: BorderRadius.circular(10)),
              child: Text(message!.text,style:  const TextStyle(color: Colors.white),)
          ),
        ],
      ),
    );
  }
}

class ImagesMessages extends StatelessWidget {
  const ImagesMessages({Key? key,required this.message}) : super(key: key);
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding/2),
      child: Column(
        crossAxisAlignment: message.isSentByMe?CrossAxisAlignment.end:CrossAxisAlignment.start,
        children: [
          if(!message.isSentByMe)...[
            Container(margin: const EdgeInsets.only(right: kDefaultPadding/2),child: Text(message.nickName,style: TextStyle(color: ColorTable.tipColor),)),
          ],
          SizedBox(
            width: MediaQuery.of(context).size.width*0.45,
            child: AspectRatio(aspectRatio: 1.6,child:ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/ParesonalHome/test1.png',fit: BoxFit.fill,),
            )),
          ),
        ],
      ),
    );
  }
}


