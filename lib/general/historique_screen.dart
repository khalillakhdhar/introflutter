import 'package:flutter/material.dart';
import 'package:introflutter/reusable/custom_drawer.dart';

class HistoriqueScreen extends StatelessWidget {
  const HistoriqueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historique de Flutter'),
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Historique de Flutter',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildTimelineEvent(
              year: '2015',
              description: 'Début du projet Flutter chez Google.',
              icon: Icons.flag,
            ),
            _buildTimelineEvent(
              year: '2017',
              description: 'Lancement officiel de Flutter lors de Google I/O.',
              icon: Icons.event,
            ),
            _buildTimelineEvent(
              year: '2020',
              description: 'Flutter devient stable pour le web et macOS.',
              icon: Icons.web,
            ),
            _buildTimelineEvent(
              year: '2023',
              description:
                  'Flutter reçoit des mises à jour majeures pour Windows et Linux.',
              icon: Icons.desktop_windows,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineEvent(
      {required String year,
      required String description,
      required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 30, color: Colors.blue),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  year,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
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
      ),
    );
  }
}
