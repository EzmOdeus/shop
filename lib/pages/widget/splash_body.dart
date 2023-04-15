import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/pages/introduction.dart';

class splashbody extends StatefulWidget {
  const splashbody({super.key});

  @override
  State<splashbody> createState() => _splashbodyState();
}

class _splashbodyState extends State<splashbody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? fading;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    fading = Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController!.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Spacer(),
          AnimatedBuilder(
            animation: fading!,
            builder: (context, _) => Opacity(
              opacity: fading?.value,
              child: Text(
                "Ezmodeus Shop",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              ),
            ),
          ),
          Image.asset(
            'assets/pngwing.com.png',
            height: 300,
            width: 200,
          )
        ]),
      ),
    );
  }
}

void goToNextView() {
  Future.delayed(
    Duration(seconds: 3),
    () {
      Get.to(() => introduction(),transition: Transition.fade) ;
    },
  );
}
