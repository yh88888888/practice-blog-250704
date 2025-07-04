import 'package:flutter/material.dart';
import 'package:practice/_core/constants/size.dart';
import 'package:practice/ui/widgets/custom_auth_text_form_field.dart';
import 'package:practice/ui/widgets/custom_elevated_button.dart';
import 'package:practice/ui/widgets/custom_logo.dart';
import 'package:practice/ui/widgets/custom_text_button.dart';

class JoinBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          CustomLogo("회원가입페이지"),
          CustomAuthTextFormField(text: "username",),
          SizedBox(height: mediumGap,),
          CustomAuthTextFormField(text: "password", obscureText: true,),
          SizedBox(height: mediumGap,),
          CustomElevatedButton(text: "회원가입", click: (){},),
          CustomTextButton(text: "로그인 페이지로 이동", click: (){
            Navigator.pushNamed(context, "/login");
          })

        ],
      ),
    );
  }
}