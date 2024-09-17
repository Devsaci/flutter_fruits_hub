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

final GlobalKey NavigatorState navigatorKey = GlobalKey NavigatorState ()

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

## solution Claude sonnet

Je comprends que vous rencontrez une erreur avec le code Flutter concernant un identifiant non défini pour `context`. Voici une solution proposée pour résoudre ce problème :

```dart
import 'package:flutter/material.dart';
import 'package:your_app/features/onboarding/presentation/views/on_boarding_view.dart'; // Assurez-vous d'importer correctement votre OnBoardingView

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    executeNavigation();
  }

  void executeNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(OnBoardingView.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Votre code de construction du widget SplashViewBody
    return Container(); // Remplacez ceci par votre contenu réel
  }
}

```

Voici les modifications apportées pour résoudre le problème :

1. J'ai encapsulé le code dans une classe `StatefulWidget` nommée `SplashViewBody`. Cela nous permet d'avoir accès au `context` dans l'état du widget.

2. La méthode `executeNavigation()` (j'ai corrigé l'orthographe de "excute" à "execute") est maintenant une méthode de l'état du widget.

3. J'ai déplacé l'appel à `executeNavigation()` dans la méthode `initState()`. Cela garantit que la navigation sera exécutée une fois que le widget sera complètement initialisé.

4. Dans la méthode `executeNavigation()`, j'ai utilisé `Navigator.of(context)` pour accéder au `Navigator` avec le contexte correct.

5. J'ai ajouté une méthode `build()` vide pour compléter la structure du widget. Vous devrez remplacer le `Container()` par votre contenu réel pour l'écran de démarrage.

Cette solution résout le problème de l'identifiant non défini pour `context` en s'assurant que nous avons accès au contexte correct dans un `StatefulWidget`.

N'oubliez pas d'importer correctement votre `OnBoardingView` et tout autre widget ou package nécessaire.

Voulez-vous que je vous explique plus en détail certaines parties de cette solution ?

11/ Steps to build On Boarding Feature

12/ Create on boarding view

13/ Page View item part one

14/ Page View item part two
