import 'package:flutter/material.dart';
import 'package:practice/_core/constants/theme.dart';
import 'package:practice/ui/pages/auth/join_page/join_page.dart';
import 'package:practice/ui/pages/auth/login_page/login_page.dart';
import 'package:practice/ui/pages/splash/splash_page.dart';
import 'package:practice/ui/widgets/custom_auth_text_form_field.dart';
import 'package:practice/ui/widgets/custom_logo.dart';

import '_core/constants/size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: {
        "/login": (context) => LoginPage(),
        "/join": (context) => JoinPage(),
        // "/post/list": (context) => PostListPage(),
        // "/post/write": (context) => PostWritePage(),
      },
      theme: theme(),
    );
  }
}




