import 'package:flutter/material.dart';
import 'package:avatar/src/pages/basico_page.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'basico');
              },
              child: const CircleAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              maxRadius: 50,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150'),
            ),
            SizedBox(height: 20),
            Text("Este es mi avatar", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
