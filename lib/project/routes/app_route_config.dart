import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_go_router_new/pages/about.dart';
import 'package:flutter_go_router_new/pages/contact_us.dart';
import 'package:flutter_go_router_new/pages/error_page.dart';
import 'package:flutter_go_router_new/pages/home.dart';
import 'package:flutter_go_router_new/pages/profile.dart';
import 'package:flutter_go_router_new/project/routes/app_route_constants.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
      routes: [
        GoRoute(
            name: MyAppRoteConstatnts.homeRouteName,
            path: '/',
            pageBuilder: (context, state) {
              return const MaterialPage(child: Home());
            }),
        GoRoute(
            name: MyAppRoteConstatnts.profileRouteName,
            path: '/profile',
            pageBuilder: (context, state) {
              return const MaterialPage(child: Profile());
            }),
        GoRoute(
            name: MyAppRoteConstatnts.aboutRouteName,
            path: '/about',
            pageBuilder: (context, state) {
              return const MaterialPage(child: About());
            }),
        GoRoute(
            name: MyAppRoteConstatnts.contactUsRouteName,
            path: '/contact_us',
            pageBuilder: (context, state) {
              return const MaterialPage(child: ContactUS());
            }),
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorPage());
      });
}
