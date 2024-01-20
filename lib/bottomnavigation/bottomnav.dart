import 'package:flutter/material.dart';
import 'package:flutter_go_router_new/dashboard/dashboard_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BottomNavWidget extends ConsumerStatefulWidget {
  // const BottomNavWidget({super.key});
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends ConsumerState<BottomNavWidget> {
  @override
  Widget build(BuildContext context) {
    final position = ref.watch(dashboardControllerProvider);

    return BottomNavigationBar(
      currentIndex: position,
      onTap: (value) => _onTap(value),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: 'Calls',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopify),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings_applications),
            label: 'Setting'),
      ],
    );
  }

  void _onTap(int index) {
    ref.read(dashboardControllerProvider.notifier).setPosition(index);

    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/cart');
        break;
      case 2:
        context.go('/setting');
        break;
      default:
    }
  }
}
