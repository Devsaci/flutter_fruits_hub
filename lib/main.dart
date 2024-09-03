import 'package:flutter/material.dart';
import 'package:flutter_fruits_hub/core/helper_functions/on_generate_routes.dart';
import 'package:flutter_fruits_hub/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashView(),
      onGenerateRoute: onGenerateRoute,
    );
  }
}
