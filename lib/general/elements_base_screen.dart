import 'package:flutter/material.dart';
import 'package:introflutter/reusable/custom_drawer.dart';
import 'package:introflutter/screens/home_screen.dart';

import '../reusable/navigation_animated.dart';
import 'historique_screen.dart';

class ElementsBaseScreen extends StatefulWidget {
  const ElementsBaseScreen({super.key});

  @override
  _ElementsBaseScreenState createState() => _ElementsBaseScreenState();
}

class _ElementsBaseScreenState extends State<ElementsBaseScreen> {
  int _currentIndex = 0;

  // Liste d'explications
  final List<Map<String, dynamic>> _elementsList = [
    {
      'title': 'Texte (Text)',
      'content':
          'Le widget Text est utilisé pour afficher des chaînes de caractères.',
      'icon': Icons.text_fields,
      'image': 'assets/images/flutter_logo.png',
    },
    {
      'title': 'Image',
      'content':
          'Le widget Image est utilisé pour afficher une image depuis une ressource ou une URL.',
      'icon': Icons.image,
      'image': 'assets/images/flutter_logo.png',
    },
    {
      'title': 'Formulaire (Form)',
      'content':
          'Le widget Form est utilisé pour gérer l\'état d\'un formulaire de saisie.',
      'icon': Icons.input,
      'image': 'assets/images/flutter_logo.png',
    },
    {
      'title': 'Drawer',
      'content':
          'Le widget Drawer est un menu latéral qui peut être affiché en glissant depuis la gauche.',
      'icon': Icons.menu,
      'image': 'assets/images/flutter_logo.png',
    },
    {
      'title': 'Container',
      'content':
          'Le widget Container est utilisé pour une mise en page flexible avec des dimensions, marges et couleurs.',
      'icon': Icons.dashboard,
      'image': 'assets/images/flutter_logo.png',
    },
  ];

  // Fonction pour changer l'élément courant
  void _nextElement() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _elementsList.length;
    });
  }

  void _previousElement() {
    setState(() {
      _currentIndex =
          (_currentIndex - 1 + _elementsList.length) % _elementsList.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Éléments de Base de Flutter"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Retour à l\'accueil'),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.of(context)
                    .push(AnimatedNavigation.createRoute(const HomeScreen()));
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Affichage animé avec AnimatedSwitcher
              AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                child: Column(
                  key: ValueKey<int>(_currentIndex),
                  children: [
                    // Affichage de l'icône de l'élément
                    Icon(
                      _elementsList[_currentIndex]['icon'],
                      size: 80,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 20),
                    // Affichage du texte
                    Text(
                      _elementsList[_currentIndex]['title'],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    // Affichage du contenu expliquant l'élément
                    Text(
                      _elementsList[_currentIndex]['content'],
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    // Affichage de l'image
                    Image.asset(
                      _elementsList[_currentIndex]['image'],
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              // Boutons Suivant et Précédent
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _previousElement,
                    child: const Text("Précédent"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _nextElement,
                    child: const Text("Suivant"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
