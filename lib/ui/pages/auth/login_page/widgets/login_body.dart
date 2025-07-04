import 'package:flutter/material.dart';
import 'package:practice/_core/constants/size.dart';
import 'package:practice/ui/widgets/custom_auth_text_form_field.dart';
import 'package:practice/ui/widgets/custom_elevated_button.dart';
import 'package:practice/ui/widgets/custom_logo.dart';
import 'package:practice/ui/widgets/custom_text_button.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomLogo("로그인페이지"),
        CustomAuthTextFormField(text: "username"),
        SizedBox(height: mediumGap),
        CustomAuthTextFormField(text: "Password", obscureText: true),
        SizedBox(height: largeGap),
        CustomElevatedButton(
          text: "로그인",
          click: () {
            Navigator.popAndPushNamed(context, "/post/list");
          },
        ),
        CustomTextButton(
          text: "회원가입 페이지로 이동",
          click: () {
            Navigator.pushNamed(context, "/join");
          },
        ),
      ],
    );
  }
}

