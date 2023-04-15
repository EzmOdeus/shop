import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shop/core/size.dart';
import '../custom_pageview.dart';
import 'custom_buttons.dart';
import 'douts.dart';

class introduction_body extends StatefulWidget {
  const introduction_body({super.key});

  @override
  State<introduction_body> createState() => _introduction_bodyState();
}

class _introduction_bodyState extends State<introduction_body> {
  PageController? pageController;
  @override
  void initState() {
    pageController=PageController(initialPage: 0,)
    ..addListener(() {
      setState(() {
        
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        doutsitem(dout:pageController!.hasClients? pageController?.page:0),
        page_view(pageController: pageController,),
        Positioned(
            top: MediaQuery.of(context).size.height * .1,
            right: 50,
            child: Text(
              "Skip",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color.fromARGB(110, 0, 0, 0)),
              textAlign: TextAlign.left,
            )),
        Positioned(bottom: 70, left: 150, right: 150, child: custom_button())
      ],
    );
  }
}
