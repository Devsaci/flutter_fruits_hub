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
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            children: [
              Text(
                'مرحبًا بك في',
              ),
              Text('HUB'),
              Text('Fruit'),
            ],
          ),
        )
      ],
    );
  }
}
