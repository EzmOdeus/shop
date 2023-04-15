import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shop/core/size.dart';

class pageview_body extends StatelessWidget {
  const pageview_body({super.key, this.title, this.subtitle, this.photo});
  final String? title;
  final String? subtitle;
  final String? photo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .1,
        ),
        Image.asset(photo!,height: 400,width: 400),
        Text(title!,
            style: TextStyle(
                color: Color(0xff6096B4),
                fontSize: 30,
                fontWeight: FontWeight.bold)),
          SizedBox(
          height: MediaQuery.of(context).size.height * .01,
        ),     
        Text(subtitle!,
            style: TextStyle(
              color: Color.fromARGB(255, 14, 13, 13),
              fontSize: 16,
            )),
      ],
    );
  }
}
