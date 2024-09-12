import 'package:flutter/material.dart';

class OnBoardingPageview extends StatelessWidget {
  const OnBoardingPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        Center(
          child: Text('Page 1'),
        ),
        Center(
          child: Text('Page 2'),
        ),
        Center(
          child: Text('Page 3'),
        ),
      ],
    );
  }
}
