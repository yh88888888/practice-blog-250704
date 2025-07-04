import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomLogo extends StatelessWidget {
  String title;

  CustomLogo(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        SvgPicture.asset("logo.svg", height: 70),
        Text("$title"),
      ],
    );
  }
}
