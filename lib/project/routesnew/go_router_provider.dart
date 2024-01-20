import 'package:flutter/material.dart';
import 'package:flutter_go_router_new/dashboard/dashboard_screen.dart';
import 'package:flutter_go_router_new/features/auth/screens/auth_screen.dart';
import 'package:flutter_go_router_new/pages/about.dart';
import 'package:flutter_go_router_new/pages/home_screen.dart';
import 'package:flutter_go_router_new/pagesnew/cart_screen.dart';
import 'package:flutter_go_router_new/pagesnew/change_pin_screen.dart';
import 'package:flutter_go_router_new/pagesnew/profile_screen.dart';
import 'package:flutter_go_router_new/pagesnew/route_error_screen.dart';
import 'package:flutter_go_router_new/pagesnew/setting_screen.dart';
import 'package:flutter_go_router_new/project/routesnew/named_route.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: 'shell');

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigator,
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'root',
        path: '/home',
        builder: (context, state) => HomeScreen(key: state.pageKey),
      ),
      ShellRoute(
        navigatorKey: _shellNavigator,
        builder: (context, state, child) => DashboardScreen(
          key: state.pageKey,
          child: child,
        ),
        routes: [
          GoRoute(
              name: home,
              path: '/',
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: HomeScreen(
                  key: state.pageKey,
                ));
              },
              routes: [
                GoRoute(
                  name: about,
                  path: 'about',
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: About());
                  },
                ),
                GoRoute(
                  name: profile,
                  path: 'profile/:id',
                  pageBuilder: (context, state) {
                    final id = state.pathParameters['id'].toString();
                    return MaterialPage(
                        child: ProfileScreen(
                      id: int.parse(id),
                      key: state.pageKey,
                    ));
                  },
                ),
                GoRoute(
                  name: authScreen,
                  path: 'authScreen',
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: AuthScreen());
                  },
                ),
                GoRoute(
                  path: 'changePIN',
                  name: changePIN,
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: ChangePINScreen());
                  },
                ),
                GoRoute(
                  path: 'setting',
                  name: setting,
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: SettingScreen());
                  },
                ),
                GoRoute(
                  path: cart,
                  name: 'cart',
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: CartScreen());
                  },
                ),
              ]),
          /*GoRoute(
            path: '/cart',
            name: cart,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: CartScreen(
                key: state.pageKey,
              ));
            },
          ),*/
        ],
      )
    ],
    errorBuilder: (context, state) => RouteErrorScreen(
      errorMsg: state.error.toString(),
      key: state.pageKey,
    ),
  );
});
