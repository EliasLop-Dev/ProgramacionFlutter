// lib/screens/livestock_screen.dart
// lib/screens/livestock_screen.dart

import 'package:flutter/material.dart';
import 'cow_detail_screen.dart'; // <-- SOLUCIÓN: Ruta relativa
import '../theme.dart';         // Esta línea se arreglará sola

class LivestockScreen extends StatelessWidget {
  const LivestockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Datos de ejemplo
    final cows = [
      {'name': 'Vaca #01', 'status': Colors.transparent},
      {'name': 'Vaca #02', 'status': Colors.green},
      {'name': 'Vaca #03', 'status': Colors.red},
      {'name': 'Vaca #04', 'status': Colors.yellow},
    ];

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Text(
              'Ganado',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Barra de Búsqueda
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Lista de Ganado
          Expanded(
            child: ListView.builder(
              itemCount: cows.length,
              itemBuilder: (context, index) {
                return _buildCowListItem(
                  context,
                  cows[index]['name'] as String,
                  cows[index]['status'] as Color,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCowListItem(BuildContext context, String name, Color statusColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: ListTile(
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.w500)),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 6,
              backgroundColor: statusColor,
            ),
            const SizedBox(width: 16),
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
        onTap: () {
          // Navegar a la pantalla de detalle
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CowDetailScreen(cowName: name),
            ),
          );
        },
      ),
    );
  }
}