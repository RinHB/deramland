import 'dart:io';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('客服'),
        backgroundColor: ColorTable.deepPurple,
      ),
      body: Container(
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
                                  sendStatus=!sendStatus;
                                  emoji=true;
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
              Offstage(
                offstage: emoji,
                child: SizedBox(
                  height: 240,
                  child: EmojiPicker(
                    onEmojiSelected: (category, emoji) {
                      _input.text =_input.text+emoji.emoji;
                      setState(() {
                        if(sendStatus){
                          sendStatus=!sendStatus;
                        }
                      });
                    },
                    onBackspacePressed: () {
                      _input.text='';
                    },
                    config: Config(
                      columns: 8,
                      emojiSizeMax: 32 * (Platform.isIOS ? 1.30 : 1.0), // Issue: https://github.com/flutter/flutter/issues/28894
                      verticalSpacing: 0,
                      horizontalSpacing: 0,
                      gridPadding: EdgeInsets.zero,
                      initCategory: Category.RECENT,
                      bgColor: const Color(0xFFF2F2F2),
                      indicatorColor: Colors.blue,
                      iconColor: Colors.grey,
                      iconColorSelected: Colors.blue,
                      progressIndicatorColor: Colors.blue,
                      backspaceColor: Colors.blue,
                      skinToneDialogBgColor: Colors.white,
                      skinToneIndicatorColor: Colors.grey,
                      enableSkinTones: true,
                      showRecentsTab: true,
                      recentsLimit: 28,
                      noRecents: const Text(
                        'No Recents',
                        style: TextStyle(fontSize: 20, color: Colors.black26),
                        textAlign: TextAlign.center,
                      ),
                      tabIndicatorAnimDuration: kTabScrollDuration,
                      categoryIcons: const CategoryIcons(),
                      buttonMode: ButtonMode.MATERIAL,
                    ),
                  ),
                ),
              )
            ],
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


