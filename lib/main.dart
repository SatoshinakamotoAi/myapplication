import 'package:flutter/material.dart';

void main() {
  runApp(const MyPrototypeApp());
}

class MyPrototypeApp extends StatelessWidget {
  const MyPrototypeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Laboratory 2 Prototype'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize:
                    MainAxisSize.min, // Para sumunod ang size sa content
                children: const [
                  Icon(
                    Icons.account_circle,
                    size: 80,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Geronimo, John Carlo L.',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Divider(height: 30, thickness: 1),
                  Text(
                    'Course & Section:',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Text(
                    'BSIT - 3.1',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}