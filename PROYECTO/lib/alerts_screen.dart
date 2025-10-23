// lib/screens/alerts_screen.dart
import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Alertas',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            // Tarjetas de Alerta
            _buildAlertCard(
              'Vaca #12 presenta fiebre.',
              Colors.red[100]!, // Fondo rojo claro
            ),
            const SizedBox(height: 16),
            _buildAlertCard(
              'Ganado #07 salió de la zona de pastoreo.',
              Colors.yellow[100]!, // Fondo amarillo claro
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAlertCard(String message, Color backgroundColor) {
    return Card(
      color: backgroundColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          message,
          style: const TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing:
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black54),
        onTap: () {
          // Acción al pulsar la alerta
        },
      ),
    );
  }
}