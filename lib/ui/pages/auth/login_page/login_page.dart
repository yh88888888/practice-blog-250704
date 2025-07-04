import 'package:flutter/material.dart';
import 'package:practice/ui/pages/auth/login_page/widgets/login_body.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LoginBody(),
      ),
    );
  }
}
