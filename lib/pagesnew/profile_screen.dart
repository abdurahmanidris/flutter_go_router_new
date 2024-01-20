import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final int id;
  const ProfileScreen({required this.id, super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen with Parameter'),
      ),
      body: Center(
        child: Column(
          children: [Text('This is Profile Screen : ${widget.id}')],
        ),
      ),
    );
  }
}
