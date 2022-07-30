import 'dart:convert';

VerificationCodeLogins verificationCodeLoginFromJson(String str) => VerificationCodeLogins.fromJson(json.decode(str));

String verificationCodeLoginToJson(VerificationCodeLogins data) => json.encode(data.toJson());

class VerificationCodeLogins{
  VerificationCodeLogins({
    this.data,
    this.errCode,
    this.message,
  });

  UserBean? data;
  int? errCode;
  String? message;

  factory VerificationCodeLogins.fromJson(Map<String, dynamic> json) => VerificationCodeLogins(
    data: UserBean.fromJson(json["data"]),
    errCode: json["errCode"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "data": data!.toJson(),
    "errCode": errCode,
    "message": message,
  };
}

class UserBean {
  UserBean({
    this.id,
    this.phone,
    this.pwd,
    this.nickName,
    this.scMail,
    this.avatar,
    this.realName,
    this.idCard,
    this.realNameFlag,
    this.blockAddress,
    this.donationPwd,
    this.menemonic,
    this.pkey,
    this.privatekey,
    this.xuperAccount,
    this.createTime,
    this.createUser,
    this.updateTime,
    this.updateUser,
  });

  String? id;
  String? phone;
  String? pwd;
  String? nickName;
  dynamic scMail;
  dynamic avatar;
  dynamic realName;
  dynamic idCard;
  int? realNameFlag;
  String? blockAddress;
  dynamic donationPwd;
  String? menemonic;
  String? pkey;
  String? privatekey;
  String? xuperAccount;
  DateTime? createTime;
  String? createUser;
  dynamic updateTime;
  dynamic updateUser;

  factory UserBean.fromJson(Map<String, dynamic> json) => UserBean(
    id: json["id"],
    phone: json["phone"],
    pwd: json["pwd"],
    nickName: json["nickName"],
    scMail: json["scMail"],
    avatar: json["avatar"],
    realName: json["realName"],
    idCard: json["idCard"],
    realNameFlag: json["realNameFlag"],
    blockAddress: json["blockAddress"],
    donationPwd: json["donationPwd"],
    menemonic: json["menemonic"],
    pkey: json["pkey"],
    privatekey: json["privatekey"],
    xuperAccount: json["xuperAccount"],
    createTime: DateTime.parse(json["createTime"]),
    createUser: json["createUser"],
    updateTime: json["updateTime"],
    updateUser: json["updateUser"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "phone": phone,
    "pwd": pwd,
    "nickName": nickName,
    "scMail": scMail,
    "avatar": avatar,
    "realName": realName,
    "idCard": idCard,
    "realNameFlag": realNameFlag,
    "blockAddress": blockAddress,
    "donationPwd": donationPwd,
    "menemonic": menemonic,
    "pkey": pkey,
    "privatekey": privatekey,
    "xuperAccount": xuperAccount,
    "createTime": createTime!.toIso8601String(),
    "createUser": createUser,
    "updateTime": updateTime,
    "updateUser": updateUser,
  };

}
