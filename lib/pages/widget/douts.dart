import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class doutsitem extends StatelessWidget {
  const doutsitem({super.key, required this.dout});
final double? dout ;
  @override
  Widget build(BuildContext context) {
    return   Positioned(
          right:MediaQuery.of(context).size.width *.3 ,
          left: MediaQuery.of(context).size.width * .3,
          bottom: 170,
          child: DotsIndicator(
            decorator: DotsDecorator(activeColor: Color(0xff6096B4)),
            dotsCount: 3,position: dout!,
          ),
        );
  }
}