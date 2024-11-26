import 'package:flutter/material.dart';
import '../flutter/debat_screen.dart';
import '../flutter/projet_screen.dart';
import '../general/elements_base_screen.dart';
import '../general/historique_screen.dart';
import '../general/installation_screen.dart';
import '../general/introduction_screen.dart';
import '../screens/home_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String introduction = '/introduction';
  static const String historique = '/historique';
  static const String installation = '/installation';
  static const String elementsBase = '/elements-base';
  static const String projet = '/projet';
  static const String debat = '/debat';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomeScreen(),
      introduction: (context) => const IntroductionScreen(),
      historique: (context) => const HistoriqueScreen(),
      //installation: (context) => const InstallationScreen(),
      elementsBase: (context) => const ElementsBaseScreen(),
      projet: (context) => const ProjetScreen(),
      debat: (context) => const DebatScreen(),
    };
  }
}
