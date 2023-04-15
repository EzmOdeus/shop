import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shop/core/size.dart';

import 'custom_color.dart';

class custom_button extends StatelessWidget {
  const custom_button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width:SizeConfig.screenWidth ,height: 50,
      decoration: BoxDecoration(color: Kmatrialcolor,borderRadius: BorderRadius.circular(10),),
      child: Center(
        child: Text(
          "Next",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}