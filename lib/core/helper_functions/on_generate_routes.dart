import 'package:flutter/material.dart';
import 'package:flutter_fruits_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'splash':
      return MaterialPageRoute(builder: (_) => const SplashView());
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
