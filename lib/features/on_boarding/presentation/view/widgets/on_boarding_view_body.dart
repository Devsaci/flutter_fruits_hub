import 'package:flutter/material.dart';
import 'package:flutter_fruits_hub/core/utils/app_colors.dart';

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
              activeColor: AppColors.primaryColor1,
              color: AppColors.primaryColor2),
        ),
      ],
    );
  }
}
