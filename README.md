# flutter_fruits_hub

Important Resources [Must Read]
GitHub Repo Link : <https://github.com/tharwatsamy/fruits_hub>

Figma Design Link : <https://www.figma.com/design/oWaxzgl17Hgn50ihv1dM8I/FruitHUB-app?node-id=12-11097&t=wkGB0iyRaGW14Gwh-0>

Vs Code Extensions : <https://www.youtube.com/watch?v=htiUiuMkxN0>

Vs Code Free Gems : <https://www.youtube.com/watch?v=sOgqctXopfo&t=43s>

## Getting Started

7/ Create Splash View

8/ On Generate Route

9/ Splash View ui done
svg_flutter pub dev
Flutter Assets Gen Extension

10/ Splash View Logic Done

Le problème ici est que vous essayez d'utiliser context dans la fonction excutNavigation(), mais cette variable n'est pas définie dans le contexte de cette fonction. Pour corriger cela, vous avez deux options:

Option 1: Passer context en argument:

Modifier la fonction:

void excutNavigation(BuildContext context) {
  Future.delayed(const Duration(seconds: 3), () {
    Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
  });
}
content_copy
Use code with caution.
Dart

Appeler la fonction avec le contexte correct:

// Dans votre widget qui appelle la fonction excutNavigation()
excutNavigation(context);
content_copy
Use code with caution.
Dart

Option 2: Utiliser un GlobalKey:

Créer un GlobalKey:

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
content_copy
Use code with caution.
Dart

Passer la clé au Navigator:

// Dans votre widget principal (généralement MaterialApp)
MaterialApp(
  navigatorKey: navigatorKey,
  // ...
)
content_copy
Use code with caution.
Dart

Utiliser la clé pour naviguer:

void excutNavigation() {
  Future.delayed(const Duration(seconds: 3), () {
    navigatorKey.currentState!.pushReplacementNamed(OnBoardingView.routeName);
  });
}
content_copy
Use code with caution.
Dart

Choisir la meilleure option:

Option 1 (passer le contexte) est la plus simple si vous n'avez besoin d'accéder à context que dans cette seule fonction.

Option 2 (GlobalKey) est plus appropriée si vous avez besoin d'accéder au Navigator de manière globale dans votre application, ou si vous voulez exécuter des actions de navigation à partir de différentes parties de votre code sans dépendre d'un contexte particulier.

Exemple complet (Option 1):

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            excutNavigation(context);
          },
          child: Text('Navigate'),
        ),
      ),
    );
  }
}

void excutNavigation(BuildContext context) {
  Future.delayed(const Duration(seconds: 3), () {
    Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
  });
}
content_copy
Use code with caution.
Dart
