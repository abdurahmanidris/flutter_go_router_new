import 'package:flutter/material.dart';
import 'package:flutter_go_router_new/drawer/drawer_widget.dart';
import 'package:flutter_go_router_new/project/routesnew/named_route.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        // backgroundColor: Colors.blue,
      ),
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          Container(
            child: Text('This is Home Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              /*GoRouter.of(context)
                    .pushNamed(MyAppRoteConstatnts.aboutRouteName);*/
              // context.pushNamed(MyAppRoteConstatnts.aboutRouteName);
              // Navigator.pushNamed(context, about);
              context.go('/about');
            },
            child: const Text('About Page'),
          ),
          ElevatedButton(
            onPressed: () =>
                // context.pushNamed(MyAppRoteConstatnts.profileRouteName),
                Navigator.pushNamed(context, profile),
            child: const Text('Profile Page'),
          ),
          ElevatedButton(
            onPressed: () =>
                // context.pushNamed(MyAppRoteConstatnts.contactUsRouteName),
                Navigator.pushNamed(context, setting),
            child: const Text('ContactUs Page'),
          ),
        ],
      ),
      // bottomNavigationBar: const BottomNavigationWidget(),
      // bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
