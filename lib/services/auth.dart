import 'package:shared_preferences/shared_preferences.dart';

import 'networking.dart';

class AuthService {
  Future<dynamic> login(Map data) async {
    NetworkHelper networkHelper = NetworkHelper(
      url: 'http://ppb.paulus-lestyo.my.id/signin',
    );
    var loggedInData = await networkHelper.postData(data);

    if (loggedInData['message'] == null) {
      saveSession(loggedInData['accessToken']);
    }
    return loggedInData;
  }

  Future<dynamic> register(Map data) async {
    NetworkHelper networkHelper = NetworkHelper(
      url: 'http://ppb.paulus-lestyo.my.id/signup',
    );
    var loggedInData = await networkHelper.postData(data);

    if (loggedInData['message'] == null) {
      saveSession(loggedInData['accessToken']);
    }
    return loggedInData;
  }

  saveSession(String token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("token", token);
    await pref.setBool("is_login", true);

    print(pref.get("token"));
  }

  logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove("is_login");
    preferences.remove("token");
  }
}
