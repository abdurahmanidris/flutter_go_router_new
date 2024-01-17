import 'package:flutter/material.dart';

class ContactUS extends StatelessWidget {
  const ContactUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Page"),
        // backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Text('This is ContactUS page.'),
        ),
      ),
    );
  }
}
