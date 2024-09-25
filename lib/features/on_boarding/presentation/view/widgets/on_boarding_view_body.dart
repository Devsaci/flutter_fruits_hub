import 'package:flutter/material.dart';

import 'package:flutter_fruits_hub/features/on_boarding/presentation/view/widgets/on_boarding_page_view.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: OnBoardingPageview(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: const DotsDecorator(
            color: Color(0xFFC40303),
            activeColor: Color(0xFF06A450),
            size: Size(5, 8),
            activeSize: Size(10, 8),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
