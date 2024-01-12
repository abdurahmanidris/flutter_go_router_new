import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_samplexx/pages/about.dart';
import 'package:go_router_samplexx/pages/contact_us.dart';
import 'package:go_router_samplexx/pages/error_page.dart';
import 'package:go_router_samplexx/pages/home.dart';
import 'package:go_router_samplexx/pages/profile.dart';
import 'package:go_router_samplexx/project/routes/app_route_constants.dart';

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
        return MaterialPage(child: ErrorPage());
      });
}
