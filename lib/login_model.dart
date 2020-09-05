class LoginResponseModel {
  TokenIdentity tokenIdentity;
  bool isNewUser;
  String respCode;
  String respMsg;

  LoginResponseModel(
      {this.tokenIdentity, this.isNewUser, this.respCode, this.respMsg});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    tokenIdentity = json['token_identity'] != null
        ? new TokenIdentity.fromJson(json['token_identity'])
        : null;
    isNewUser = json['is_new_user'];
    respCode = json['resp_code'];
    respMsg = json['resp_msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tokenIdentity != null) {
      data['token_identity'] = this.tokenIdentity.toJson();
    }
    data['is_new_user'] = this.isNewUser;
    data['resp_code'] = this.respCode;
    data['resp_msg'] = this.respMsg;
    return data;
  }
}

class TokenIdentity {
  UserIdentity userIdentity;
  String token;
  String firebaseToken;

  TokenIdentity({this.userIdentity, this.token, this.firebaseToken});

  TokenIdentity.fromJson(Map<String, dynamic> json) {
    userIdentity = json['user_identity'] != null
        ? new UserIdentity.fromJson(json['user_identity'])
        : null;
    token = json['token'];
    firebaseToken = json['firebase_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userIdentity != null) {
      data['user_identity'] = this.userIdentity.toJson();
    }
    data['token'] = this.token;
    data['firebase_token'] = this.firebaseToken;
    return data;
  }
}

class UserIdentity {
  int orgMemberId;

  UserIdentity({this.orgMemberId});

  UserIdentity.fromJson(Map<String, dynamic> json) {
    orgMemberId = json['org_member_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['org_member_id'] = this.orgMemberId;
    return data;
  }
}

class LoginRequestModel {
  String countryCode;
  String emailOrPhone;
  String password;

  LoginRequestModel({this.countryCode, this.emailOrPhone, this.password});

  LoginRequestModel.fromJson(Map<String, dynamic> json) {
    countryCode = json['country_code'];
    emailOrPhone = json['email_or_phone'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country_code'] = this.countryCode;
    data['email_or_phone'] = this.emailOrPhone;
    data['password'] = this.password;
    return data;
  }
}
