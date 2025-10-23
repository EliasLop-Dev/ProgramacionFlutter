// lib/screens/cow_detail_screen.dart
import 'package:flutter/material.dart';
import '../theme.dart';

class CowDetailScreen extends StatelessWidget {
  final String cowName;

  const CowDetailScreen({super.key, required this.cowName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar personalizada para que coincida con el diseño
      appBar: AppBar(
        title: const Text('Vista de vaca', style: TextStyle(color: Colors.black)),
        backgroundColor: kBackgroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cabecera
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: kPrimaryLightColor,
                  child: Icon(Icons.pets, size: 30, color: kPrimaryColor),
                ),
                const SizedBox(width: 16),
                Text(
                  cowName,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Detalles
            _buildDetailRow('Edad:', '3 años'),
            _buildDetailRow('Raza:', 'Holsteín'),
            _buildDetailRow('Hato:', '10'),
            const SizedBox(height: 32),
            // Sección de Salud
            const Text(
              'Salud',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Card(
              elevation: 1,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Temperatura: 38.5°C',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.location_on,
                      color: kPrimaryColor,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget para las filas de detalle
  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}