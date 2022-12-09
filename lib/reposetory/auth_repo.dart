import 'package:http/http.dart' as http;
import 'package:news_app/const_data/server_config.dart';

class AuthRep {
  Future<bool> signUpWithEmail(
      String fristName,
      String lastName,
      String emailAddress,
      String phoneNumber,
      String passWord,
      String confirmPassWord) async {
    String url = Config.sreverUrl + Config.signUpUrl;
    var response =await http.post(Uri.parse(url), body: <String, String>{
      'first_name': fristName,
      'last_name': lastName,
      'email': emailAddress,
      'phone': phoneNumber,
      'password': passWord,
      'password_confirmation': confirmPassWord,
    });
    if (response.statusCode == 200){
      return true;
    }else{
      return false;
    }

  }
}
