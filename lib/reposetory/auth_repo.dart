import 'package:http/http.dart' as http;
import 'package:news_app/const_data/server_config.dart';

class AuthRepo{
  Future <bool> signUpwithEmail(String userName, String emailAddress, String phoneNumber, String password) async {

    String url = Config.srever_url + Config.sign_up_url;
    var response = await http.post(Uri.parse(url), body: <String, String> {

    });

   return false;
  }
}