import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomTarjeta2 extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String placeholderAsset;

  const CustomTarjeta2({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.placeholderAsset = 'assets/images/progress.gif',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: AssetImage(placeholderAsset),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 1000),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(title, style: Theme.of(context).textTheme.titleMedium),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(subtitle),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class CustomTarjeta2Rounded extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String placeholderAsset;

  const CustomTarjeta2Rounded({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.placeholderAsset = 'assets/images/progress.gif',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
      elevation: 8,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: AssetImage(placeholderAsset),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 800),
          ),
          ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
            trailing: Icon(Icons.more_vert, color: AppTheme.primary),
          ),
        ],
      ),
    );
  }
}

class CustomTarjeta2Oval extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String placeholderAsset;

  const CustomTarjeta2Oval({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.placeholderAsset = 'assets/images/progress.gif',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            clipBehavior: Clip.antiAlias,
            child: FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: AssetImage(placeholderAsset),
              width: double.infinity,
              height: 180,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(title, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 6),
                Text(subtitle, textAlign: TextAlign.center),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTarjeta2Shadow extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String placeholderAsset;

  const CustomTarjeta2Shadow({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.placeholderAsset = 'assets/images/progress.gif',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: AppTheme.primary.withOpacity(0.45),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: AssetImage(placeholderAsset),
            width: double.infinity,
            height: 180,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
            trailing: Icon(Icons.light_mode, color: AppTheme.primary),
          ),
        ],
      ),
    );
  }
}
