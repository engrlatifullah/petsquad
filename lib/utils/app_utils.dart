import 'dart:async';

import 'package:flutter/material.dart';

import '../screens/auth_screen/login_screen.dart';

class AppUtils {
  static  getHeight(BuildContext context, size){
    return MediaQuery.sizeOf(context).height * size;
  }
  static  getWidth(BuildContext context, size){
    return MediaQuery.sizeOf(context).width * size;
  }


  static startTimer(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      navigateToPage(context, const LoginScreen());
    });
  }

  static navigateToPage(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }
}