import 'package:flutter/material.dart';
import 'package:flutter_go_router_new/drawer/drawer_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_go_router_new/project/routes/app_route_constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Homepage"),
          // backgroundColor: Colors.blue,
        ),
        drawer: const DrawerWidget(),
        body: Column(
          children: [
            Container(
              child: Text('Home'),
            ),
            ElevatedButton(
              onPressed: () {
                /*GoRouter.of(context)
                    .pushNamed(MyAppRoteConstatnts.aboutRouteName);*/
                context.pushNamed(MyAppRoteConstatnts.aboutRouteName);
              },
              child: const Text('About Page'),
            ),
            ElevatedButton(
              onPressed: () =>
                  context.pushNamed(MyAppRoteConstatnts.profileRouteName),
              child: const Text('Profile Page'),
            ),
            ElevatedButton(
              onPressed: () =>
                  context.pushNamed(MyAppRoteConstatnts.contactUsRouteName),
              child: const Text('ContactUs Page'),
            ),
          ],
        ));
  }
}
