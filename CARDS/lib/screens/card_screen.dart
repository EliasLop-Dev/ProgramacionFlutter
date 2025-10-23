import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {
        'title': 'Albert Einstein (AI image)',
        'subtitle': 'Físico teórico — biografía corta ejemplo.',
        'image': 'https://cdn.pixabay.com/photo/2024/04/08/18/23/ai-generated-8684145_1280.jpg',
      },
      {
        'title': 'Paisaje redondeado',
        'subtitle': 'Ejemplo de tarjeta redondeada.',
        'image': 'https://picsum.photos/800/400?image=10',
      },
      {
        'title': 'Arquitectura oval',
        'subtitle': 'Ejemplo de tarjeta con forma oval.',
        'image': 'https://picsum.photos/800/400?image=20',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen - Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        children: [
          const CustomTarjeta1(),
          const SizedBox(height: 10),
          CustomTarjeta2(
            title: items[0]['title']!,
            subtitle: items[0]['subtitle']!,
            imageUrl: items[0]['image']!,
          ),
          const SizedBox(height: 10),
          CustomTarjeta2Rounded(
            title: items[1]['title']!,
            subtitle: items[1]['subtitle']!,
            imageUrl: items[1]['image']!,
          ),
          const SizedBox(height: 10),
          CustomTarjeta2Oval(
            title: items[2]['title']!,
            subtitle: items[2]['subtitle']!,
            imageUrl: items[2]['image']!,
          ),
          const SizedBox(height: 12),
          CustomTarjeta2Shadow(
            title: 'Sombra intensa',
            subtitle: 'Ejemplo con elevación y shadowColor.',
            imageUrl: items[0]['image']!,
          ),
        ],
      ),
    );
  }
}
