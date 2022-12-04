
/// status : "Success"
/// message : "Registration Successful"
/// user : {"first_name":"s","last_name":"k","phone":"1234567","email":"sk@gmail.com","updated_at":"2022-12-04T20:08:45.000000Z","created_at":"2022-12-04T20:08:45.000000Z","id":105}
/// access_token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNTRkYjYxNjM3MGFiZTIzNWQxN2Y4OTVjYzI2MDYyNzhhNTk5YmZhZDBhNGYwN2YyOGYxMGI3N2EyNGY5MzNkN2FkOTRiMmQwYWI0YjA1YTciLCJpYXQiOjE2NzAxODQ1MjUuMDgyNDIzOTI1Mzk5NzgwMjczNDM3NSwibmJmIjoxNjcwMTg0NTI1LjA4MjQzMzkzODk4MDEwMjUzOTA2MjUsImV4cCI6MTcwMTcyMDUyNS4wNzI0ODIxMDkwNjk4MjQyMTg3NSwic3ViIjoiMTA1Iiwic2NvcGVzIjpbXX0.c7xlG2IrCtdhJCT6f7LEm4M0fXlWq0KzHSJKrsLlopIrenhPZan7z1XP5t6p77uPW5RhStA8VLRVRauHM_alzLhrOaoCnjoBRox8kQFlBn5T7U4fxo2SxGyFdlmsK6cptwXPFGbnIWeo2VhbO-6UPBPk4Y-JuiJ6KAZ90mcUTTSH27Abkgb1HuFrQZ_LAkhAX5LwKd62OW2tOPolpuR-R9-w5QWcmuUpUBB1mFtRZaLmB6euWs4poi4j8S11IX9_V1Y7kqo3uEPmCHMLiFuuZEXJ1zo_ea1RsNhIwG0FYLabq7HMKYAPQWaQooYwTLqMB8_wXboGhUCl63vQuop10rMN6O9e308_SFGyUr5HWj2xFJn0i0PCuCDO2zmh0lI02uRNuhzHZob6Yh2zqbCnlrRHdBa9JUb1S-YhXAOceLr-_Q0yP0XZe8P_KopgGRQjXQk-PbhOLB7eTgcFGygygbmxoSMrpaAra5XBMqC9wwCJmDesB-35IAFcwEpdqpXIvb3YFzdIcVwsQYMsdi25J1IgNd11_MQNFhUmph9JBRLYHKpdd6AlxQ6ot5V57xzB4g3SPFYws-KJTctxW7VXeAyqxeBYMtoM-mR6xD_hj-SOdJ6DdzlfAeXYpS6Wz6O_YgvFOoqRHq5D_4jZQIjUcPG4uvw4l9cVBchjiJ3RLBg"
/// token_type : "Bearer"
/// expires_at : "2023-12-04 20:08:45"

class SignUpModel {
  SignUpModel({
      String? status, 
      String? message, 
      User? user, 
      String? accessToken, 
      String? tokenType, 
      String? expiresAt,}){
    _status = status;
    _message = message;
    _user = user;
    _accessToken = accessToken;
    _tokenType = tokenType;
    _expiresAt = expiresAt;
}

  SignUpModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _accessToken = json['access_token'];
    _tokenType = json['token_type'];
    _expiresAt = json['expires_at'];
  }
  String? _status;
  String? _message;
  User? _user;
  String? _accessToken;
  String? _tokenType;
  String? _expiresAt;
SignUpModel copyWith({  String? status,
  String? message,
  User? user,
  String? accessToken,
  String? tokenType,
  String? expiresAt,
}) => SignUpModel(  status: status ?? _status,
  message: message ?? _message,
  user: user ?? _user,
  accessToken: accessToken ?? _accessToken,
  tokenType: tokenType ?? _tokenType,
  expiresAt: expiresAt ?? _expiresAt,
);
  String? get status => _status;
  String? get message => _message;
  User? get user => _user;
  String? get accessToken => _accessToken;
  String? get tokenType => _tokenType;
  String? get expiresAt => _expiresAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['access_token'] = _accessToken;
    map['token_type'] = _tokenType;
    map['expires_at'] = _expiresAt;
    return map;
  }

}
class User {
  User({
    String? firstName,
    String? lastName,
    String? phone,
    String? email,
    String? updatedAt,
    String? createdAt,
    int? id,}){
    _firstName = firstName;
    _lastName = lastName;
    _phone = phone;
    _email = email;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
    _id = id;
  }

  User.fromJson(dynamic json) {
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _phone = json['phone'];
    _email = json['email'];
    _updatedAt = json['updated_at'];
    _createdAt = json['created_at'];
    _id = json['id'];
  }
  String? _firstName;
  String? _lastName;
  String? _phone;
  String? _email;
  String? _updatedAt;
  String? _createdAt;
  int? _id;
  User copyWith({  String? firstName,
    String? lastName,
    String? phone,
    String? email,
    String? updatedAt,
    String? createdAt,
    int? id,
  }) => User(  firstName: firstName ?? _firstName,
    lastName: lastName ?? _lastName,
    phone: phone ?? _phone,
    email: email ?? _email,
    updatedAt: updatedAt ?? _updatedAt,
    createdAt: createdAt ?? _createdAt,
    id: id ?? _id,
  );
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get phone => _phone;
  String? get email => _email;
  String? get updatedAt => _updatedAt;
  String? get createdAt => _createdAt;
  int? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['phone'] = _phone;
    map['email'] = _email;
    map['updated_at'] = _updatedAt;
    map['created_at'] = _createdAt;
    map['id'] = _id;
    return map;
  }

}