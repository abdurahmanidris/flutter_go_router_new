/*import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
        // backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Text('This is About Us page!'),
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      body: const Center(
        child: Column(
          children: [Text("This is About Screen")],
        ),
      ),
    );
  }
}
