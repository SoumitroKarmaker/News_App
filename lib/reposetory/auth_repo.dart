import 'package:http/http.dart' as http;
import 'package:news_app/const_data/server_config.dart';

class AuthRepo {
  Future<bool> signUpwithEmail(
      String fristName,
      String lastName,
      String emailAddress,
      String phoneNumber,
      String password,
      String confirmPassword) async {
    String url = Config.sreverUrl + Config.signUpUrl;
    var response = await http.post(Uri.parse(url), body: <String, String>{
      'first_name': fristName,
      'last_name': lastName,
      'email': emailAddress,
      'phone': phoneNumber,
      'password': password,
      'password_confirmation': confirmPassword,
    });
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }

    return false;
  }
}
