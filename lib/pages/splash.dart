import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shop/pages/widget/splash_body.dart';

class Splash_view extends StatelessWidget {
  const Splash_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6096B4),
      body: splashbody() ,
    );
  }
}