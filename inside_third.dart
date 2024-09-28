import 'package:flutter/material.dart';
class Inside extends StatefulWidget {
  const Inside({super.key});

  @override
  State<Inside> createState() => _InsideState();
}

class _InsideState extends State<Inside> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Destinations'),
        centerTitle: true,
        backgroundColor: Colors.black87,
        elevation: 9.0,
      ),
    );
  }
}
