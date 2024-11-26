import 'package:flutter/material.dart';
import 'package:introflutter/reusable/custom_drawer.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  bool _showImage = false;

  @override
  void initState() {
    super.initState();
    // Afficher l'image après un délai de 3 secondes
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _showImage = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Introduction à Flutter'),
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Flutter est un framework UI open-source créé par Google pour '
                'développer des applications multiplateformes (mobile, web, desktop) avec '
                'une seule base de code. Grâce à Flutter, vous pouvez créer des applications '
                'performantes, belles et expressives.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              const Text(
                'Les principales caractéristiques de Flutter sont :',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                '- Développement multiplateforme\n'
                '- Haute performance grâce à un moteur graphique performant\n'
                '- Widgets personnalisables et extensibles\n'
                '- Développement rapide avec Hot Reload\n'
                '- Une communauté active et croissante',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 30),
              const Text(
                'Ensemble, nous allons explorer Flutter, de la configuration de l\'environnement '
                'de développement jusqu\'à la création d\'applications complètes.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              AnimatedOpacity(
                opacity: _showImage ? 1.0 : 0.0,
                duration: const Duration(seconds: 2),
                child: Image.asset('assets/images/flutter_logo.jpg'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Voici le logo de Flutter, représentant la beauté et la flexibilité du framework.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
