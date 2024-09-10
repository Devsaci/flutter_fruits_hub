import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  static const String routeName = 'onBoardingView';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellowAccent,
      width: 300,
      height: 300,
      child: const Center(child: Text('OnBoardingView')),
    );
  }
}
