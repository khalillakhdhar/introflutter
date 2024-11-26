import 'package:flutter/material.dart';
import '../flutter/debat_screen.dart';
import '../flutter/projet_screen.dart';
import '../general/elements_base_screen.dart';
import '../general/historique_screen.dart';
import '../general/installation_screen.dart';
import '../general/introduction_screen.dart';
import '../utils/app_routes.dart';
import 'navigation_animated.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: const Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Introduction'),
            onTap: () {
              Navigator.of(context).push(
                  AnimatedNavigation.createRoute(const IntroductionScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Historique'),
            onTap: () {
              Navigator.of(context).push(
                  AnimatedNavigation.createRoute(const HistoriqueScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.download),
            title: const Text('Installation'),
            onTap: () {
              Navigator.of(context).push(
                  AnimatedNavigation.createRoute(const InstallationScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.widgets),
            title: const Text('Éléments de base'),
            onTap: () {
              Navigator.of(context).push(
                  AnimatedNavigation.createRoute(const ElementsBaseScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.lightbulb),
            title: const Text('Présentation du projet'),
            onTap: () {
              Navigator.of(context)
                  .push(AnimatedNavigation.createRoute(const ProjetScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text('Débat ouvert'),
            onTap: () {
              Navigator.of(context)
                  .push(AnimatedNavigation.createRoute(const DebatScreen()));
            },
          ),
        ],
      ),
    );
  }
}
