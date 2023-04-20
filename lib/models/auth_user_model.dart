// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AuthUserModel {
  String email;
  String password;
  String confirmPassword;
  String uid;
  String userType;
  String pharmacyName;
  String userName;
  String profilePic;
  String mobileNo;

  AuthUserModel({
    this.email = '',
    this.password = '',
    this.confirmPassword = '',
    this.uid = '',
    this.userType = '',
    this.pharmacyName = '',
    this.userName = '',
    this.profilePic = '',
    this.mobileNo = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
      'uid': uid,
      'userType': userType,
      'pharmacyName': pharmacyName,
      'userName': userName,
      'profilePic': profilePic,
      'mobileNo': mobileNo,
    };
  }

  factory AuthUserModel.fromMap(Map<String, dynamic> map) {
    return AuthUserModel(
      email: map['email'] as String,
      password: map['password'] as String,
      confirmPassword: map['confirmPassword'] as String,
      uid: map['uid'] as String,
      userType: map['userType'] as String,
      pharmacyName: map['pharmacyName'] as String,
      userName: map['userName'] as String,
      profilePic: map['profilePic'] as String,
      mobileNo: map['mobileNo'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthUserModel.fromJson(String source) =>
      AuthUserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
