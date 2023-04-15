import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shop/pages/widget/page_view_body.dart';

class page_view extends StatelessWidget {
  const page_view({super.key, this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        pageview_body(
          photo: 'assets/10117.jpg',
          subtitle: 'Welcome To My Shop',
          title: 'Ezmodeus Shop',
        ),
        pageview_body(
          photo: 'assets/4043715.jpg',
          subtitle: 'Get your order by speed delivery',
          title: 'Delivery on the way',
        ),
        pageview_body(
          photo: 'assets/onboarding3.png',
          subtitle: 'Order is arrived at your Place',
          title: 'Delivery Arrived',
        ),
      ],
    );
  }
}
