import 'package:flutter/material.dart';
import 'screens/avatar_screen.dart';
import 'src/pages/basico_page.dart';
import 'src/pages/scroll_page.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Avatar App',
      initialRoute: 'avatar',
      routes: {
        'avatar': (_) => const AvatarScreen(),
        'basico': (_) =>  BasicoPage(),
        'scroll': (_) =>  ScrollPage(), 
      },
    );
  }
}
