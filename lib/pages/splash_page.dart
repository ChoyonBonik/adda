import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_chat_app/auth/login_page.dart';
import 'package:flutter_chat_app/widget/widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashService splashScreen = SplashService();

  @override
  void initState() {
    super.initState();
    splashScreen.isSignedIn(context);
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(image: AssetImage('assets/images/app_logo.png')),
      ),
    );
  }
}
class SplashService {
  void isSignedIn(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      nextScreen(context, LoginPage());
    });
  }
}
