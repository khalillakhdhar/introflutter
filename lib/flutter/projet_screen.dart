import 'package:flutter/material.dart';
import 'package:introflutter/reusable/custom_drawer.dart';

class ProjetScreen extends StatefulWidget {
  const ProjetScreen({Key? key}) : super(key: key);

  @override
  _ProjetScreenState createState() => _ProjetScreenState();
}

class _ProjetScreenState extends State<ProjetScreen> {
  bool _showSchedule = false;

  @override
  void initState() {
    super.initState();
    // Affichage progressif du planning après 2 secondes
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _showSchedule = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planification du Workshop Flutter'),
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Workshop Flutter : Portfolio Dynamique avec SQLite',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              const Text(
                'Ce projet consiste à créer un portfolio dynamique en utilisant Flutter. Le but est de présenter vos compétences et réalisations sur les plateformes mobile, web, et desktop. '
                'Nous utiliserons SQLite pour gérer les données et permettre la sauvegarde des informations sur le profil, les compétences, et les projets.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              const Text(
                'Planification du Workshop :',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              AnimatedOpacity(
                opacity: _showSchedule ? 1.0 : 0.0,
                duration: const Duration(seconds: 2),
                child: _buildWorkshopSchedule(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWorkshopSchedule() {
    return Column(
      children: [
        _buildScheduleItem(
          'Introduction au projet',
          'Présentation du concept du portfolio dynamique et de l\'utilisation de SQLite.',
        ),
        const SizedBox(height: 10),
        _buildScheduleItem(
          'Configuration de Flutter',
          'Installation de Flutter et des outils nécessaires pour le projet (Android Studio, VS Code, etc.).',
        ),
        const SizedBox(height: 10),
        _buildScheduleItem(
          'Développement de l\'interface utilisateur',
          'Création des différentes pages du portfolio (accueil, compétences, réalisations).',
        ),
        const SizedBox(height: 10),
        _buildScheduleItem(
          'Gestion des données avec SQLite',
          'Utilisation de SQLite pour sauvegarder les informations de profil, compétences et projets.',
        ),
        const SizedBox(height: 10),
        _buildScheduleItem(
          'Création du profil utilisateur',
          'Mise en place de la fonctionnalité pour gérer un profil utilisateur dynamique (nom, photo, contact, etc.).',
        ),
        const SizedBox(height: 10),
        _buildScheduleItem(
          'Test sur mobile, web et desktop',
          'Tester l\'application sur différentes plateformes et résoudre les problèmes spécifiques.',
        ),
      ],
    );
  }

  Widget _buildScheduleItem(String title, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.check_circle, color: Colors.green),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 5),
              Text(
                description,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
