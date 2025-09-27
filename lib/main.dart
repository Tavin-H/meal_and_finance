import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter + Python API')),
        body: const Center(child: ApiDemo()),
      ),
    );
  }
}

class ApiDemo extends StatefulWidget {
  const ApiDemo({super.key});

  @override
  State<ApiDemo> createState() => _ApiDemoState();
}





class _ApiDemoState extends State<ApiDemo> {
  String result = '';

  Future<void> sendData(int x, int y) async {
    final url = Uri.parse('http://127.0.0.1:8000/compute'); // change if on mobile
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'x': x, 'y': y}),
    );


    if (response.statusCode == 200) {
      setState(() {
        result = 'Result: ${jsonDecode(response.body)['result']}';
      });
    } else {
      setState(() {
        result = 'Error: ${response.statusCode}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => sendData(5, 3),
          child: const Text('Send 5 + 3 to Python'),
        ),
        const SizedBox(height: 20),
        Text(result, style: const TextStyle(fontSize: 20)),
      ],
    );
  }
}
