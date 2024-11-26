import 'package:flutter/material.dart';
import 'package:introflutter/reusable/custom_drawer.dart';

class InstallationScreen extends StatelessWidget {
  const InstallationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Installation de Flutter'),
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Étapes pour installer Flutter',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildStepTile(
              step: '1',
              title: 'Télécharger Flutter',
              subtitle:
                  'Rendez-vous sur le site officiel de Flutter (flutter.dev) et téléchargez le SDK.',
            ),
            _buildStepTile(
              step: '2',
              title: 'Configurer le PATH',
              subtitle:
                  'Ajoutez Flutter à votre variable PATH pour utiliser la commande flutter.',
            ),
            _buildStepTile(
              step: '3',
              title: 'Installer un éditeur',
              subtitle:
                  'Installez Visual Studio Code ou Android Studio pour le développement.',
            ),
            _buildStepTile(
              step: '4',
              title: 'Tester votre installation',
              subtitle:
                  'Exécutez "flutter doctor" pour vérifier les dépendances.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepTile(
      {required String step, required String title, required String subtitle}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text(
          step,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
    );
  }
}
