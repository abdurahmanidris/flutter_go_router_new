import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Text('This is About Us page!'),
        ),
      ),
    );
  }
}
