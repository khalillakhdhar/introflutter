import 'package:flutter/material.dart';
import 'package:introflutter/reusable/custom_drawer.dart';

class DebatScreen extends StatefulWidget {
  const DebatScreen({super.key});

  @override
  _DebatScreenState createState() => _DebatScreenState();
}

class _DebatScreenState extends State<DebatScreen> {
  String _debateText = "Bienvenus au débat ouvert !";
  IconData _debateIcon = Icons.question_answer;

  // Liste de textes et icônes à afficher pendant le débat
  final List<String> _debateMessages = [
    "Quel est l'avenir de Flutter ?",
    "Pourquoi choisir Flutter pour le développement mobile ?",
    "Comment Flutter peut-il révolutionner le développement d'applications ?",
  ];

  final List<IconData> _debateIcons = [
    Icons.lightbulb_outline,
    Icons.phone_iphone,
    Icons.code,
  ];

  int _currentIndex = 0;

  // Fonction pour changer le message et l'icône à chaque pression
  void _nextDebateElement() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _debateMessages.length;
      _debateText = _debateMessages[_currentIndex];
      _debateIcon = _debateIcons[_currentIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Débat Ouvert"),
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                child: Column(
                  key: ValueKey<int>(_currentIndex),
                  children: [
                    Icon(
                      _debateIcon,
                      size: 80,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      _debateText,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: _nextDebateElement,
                child: const Text("Suivant"),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
