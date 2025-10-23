// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            // Icono de Vaca (Placeholder)
            const CircleAvatar(
              radius: 50,
              backgroundColor: kPrimaryLightColor,
              child: Icon(
                Icons.pets, // Deberías reemplazar esto con tu icono SVG/PNG
                size: 60,
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'SISTEMA DE CONTROL EN LA GANADERÍA',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 40),
            // Tarjetas de Estadísticas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatCard('10', 'Registros'),
                _buildStatCard('20 L', 'Prod:rts'),
              ],
            ),
            const Spacer(),
            // Icono de Alerta
            const Icon(
              Icons.notifications_active,
              color: kPrimaryColor,
              size: 30,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Widget para las tarjetas de estadísticas
  Widget _buildStatCard(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}