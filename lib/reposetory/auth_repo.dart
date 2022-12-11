import 'package:http/http.dart' as http;
import 'package:news_app/const_data/server_config.dart';

class AuthRepo {
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
    print(response.body);
    if (response.statusCode == 201){
      return true;
    }else{
      return false;
    }

  }
}
