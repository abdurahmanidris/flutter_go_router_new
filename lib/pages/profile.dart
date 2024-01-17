import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        // backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Text('This is Profile page.'),
        ),
      ),
    );
  }
}
