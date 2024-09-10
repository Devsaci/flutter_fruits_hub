import 'package:flutter/material.dart';
import 'package:flutter_fruits_hub/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:flutter_fruits_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'splash':
      return MaterialPageRoute(builder: (_) => const SplashView());
    case 'onbording':
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
