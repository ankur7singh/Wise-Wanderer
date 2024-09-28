import 'package:flutter/material.dart';
class Desert extends StatefulWidget {
  const Desert({super.key});

  @override
  State<Desert> createState() => _DesertState();
}

class _DesertState extends State<Desert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Desert'),
        centerTitle: true,
        backgroundColor: Colors.black87,
        elevation: 9.0,
      ),
    );
  }
}
