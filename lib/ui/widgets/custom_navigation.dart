import 'package:flutter/material.dart';
import 'package:practice/_core/constants/size.dart';

class CustomNavigation extends StatelessWidget{
  final scaffoldKey;
  const CustomNavigation(this.scaffoldKey, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getDrawerWidth(context),
      color: Colors.white,
      child: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(onPressed: (){

          }, child: const Text(
            "글쓰기",
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.bold,
               color: Colors.black54,
             ),
          ))
        ],
      )),
    );
  }

}