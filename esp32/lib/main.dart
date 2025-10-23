import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ESP32 Control',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String espIp = "http://aada5ceb6706.ngrok-free.app"; // Cambia por la IP del ESP32
  bool foco = false;
  bool ventilador = false;
  int pir = 0;
  int mq2 = 0;

  Future<void> getStatus() async {
    try {
      final res = await http.get(Uri.parse("$espIp/status"));
      if (res.statusCode == 200) {
        final data = json.decode(res.body);
        setState(() {
          foco = data["foco"];
          ventilador = data["ventilador"];
          pir = data["pir"];
          mq2 = data["mq2"];
        });
      }
    } catch (e) {
      debugPrint("Error al obtener estado: $e");
    }
  }

  Future<void> toggleFoco() async {
    await http.get(Uri.parse("$espIp/foco"));
    getStatus();
  }

  Future<void> toggleVentilador() async {
    await http.get(Uri.parse("$espIp/ventilador"));
    getStatus();
  }

  @override
  void initState() {
    super.initState();
    getStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Control ESP32")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: toggleFoco,
              icon: Icon(foco ? Icons.lightbulb : Icons.lightbulb_outline),
              label: Text(foco ? "Apagar Foco" : "Encender Foco"),
              style: ElevatedButton.styleFrom(
                backgroundColor: foco ? Colors.yellow[700] : Colors.grey[300],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: toggleVentilador,
              icon: Icon(ventilador ? Icons.toys : Icons.toys_outlined),
              label: Text(ventilador ? "Apagar Ventilador" : "Encender Ventilador"),
              style: ElevatedButton.styleFrom(
                backgroundColor: ventilador ? Colors.green : Colors.grey[300],
              ),
            ),
            const SizedBox(height: 30),
            Card(
              child: ListTile(
                leading: const Icon(Icons.motion_photos_on),
                title: const Text("Sensor PIR"),
                trailing: Text(pir == 1 ? "Movimiento detectado" : "Sin movimiento"),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.local_fire_department),
                title: const Text("Sensor MQ2"),
                trailing: Text(mq2 == 1 ? "Gas detectado" : "Normal"),
              ),
            ),
            const Spacer(),
            ElevatedButton.icon(
              onPressed: getStatus,
              icon: const Icon(Icons.refresh),
              label: const Text("Actualizar"),
            ),
          ],
        ),
      ),
    );
  }
}
