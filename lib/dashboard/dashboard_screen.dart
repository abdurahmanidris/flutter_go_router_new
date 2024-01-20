import 'package:flutter/material.dart';
import 'package:flutter_go_router_new/bottomnavigation/bottom_navigation_widget.dart';

class DashboardScreen extends StatefulWidget {
  final Widget child;
  const DashboardScreen({required this.child, Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const DrawerWidget(),
      /*appBar: AppBar(
        title: const Text('CBE Mobile Banking'),
        backgroundColor: Colors.blue,
      ),*/
      body: widget.child,
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
