import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:flutter_olshop/screen/homepage_screen.dart';
import 'package:flutter_olshop/services/auth.dart';

class LoginScreen2 extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 500);

  Future<String?>? _loginUser(LoginData data) {
    return Future.delayed(loginTime).then((_) async {
      var loggedInData = await AuthService()
          .login({"username": data.name, "password": data.password});
      if (loggedInData['message'] != null) {
        return loggedInData['message']!;
      } else {
        return null;
      }
    });
  }

  Future<String?> _registerUser(SignupData data) {
    return Future.delayed(loginTime).then((_) async {
      var loggedInData = await AuthService()
          .register({"username": data.name, "password": data.password});
      if (loggedInData['message'].contains("Failed!")) {
        return loggedInData['message']!;
      } else {
        return null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      hideForgotPasswordButton: true,
      userValidator: (value) {
        if (value == null || value.isEmpty) {
          return 'Username required!';
        }
        return null;
      },
      passwordValidator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password required!';
        }
        return null;
      },
      logo: AssetImage('image/logo.png'),
      onLogin: _loginUser,
      onSignup: _registerUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomepageScreen(),
        ));
      },
      onRecoverPassword: (_) => null,
      messages: LoginMessages(
        userHint: 'Username',
        passwordHint: 'Password',
        confirmPasswordHint: 'Confirm',
        loginButton: 'LOG IN',
        signupButton: 'REGISTER',
        recoverPasswordButton: 'HELP ME',
        goBackButton: 'GO BACK',
        confirmPasswordError: 'Not match!',
      ),
    );
  }
}
