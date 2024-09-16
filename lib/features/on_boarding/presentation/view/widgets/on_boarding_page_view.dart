import 'package:flutter/material.dart';
import 'package:flutter_fruits_hub/core/utils/app_images.dart';
import 'package:flutter_fruits_hub/features/on_boarding/presentation/view/widgets/page_view_item.dart';

class OnBoardingPageview extends StatelessWidget {
  const OnBoardingPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageviewItem(
          image: Assets.imagesPageViewItem1Image,
          background: 'background',
          subtitle: 'subtitle',
          title: 'title',
        )
      ],
    );
  }
}
