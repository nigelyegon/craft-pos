
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatelessWidget {
  const AppShell({
    super.key,
    required this.child,
  });

  final Widget child;

  static const destinations = [
    (label: 'Home', icon: Icons.dashboard_outlined,
      selected: Icons.dashboard, path: '/dashboard'),
    (label: 'Products', icon: Icons.inventory_2_outlined,
      selected: Icons.inventory_2, path: '/products'),
    (label: 'Stock', icon: Icons.warehouse_outlined,
      selected: Icons.warehouse, path: '/inventory'),
    (label: 'Sales', icon: Icons.point_of_sale_outlined,
      selected: Icons.point_of_sale, path: '/sales'),
    (label: 'Reports', icon: Icons.bar_chart_outlined,
      selected: Icons.bar_chart, path: '/reports'),
  ];

  int getIndex(String location) {
    final index = destinations.indexWhere(
      (item) => location.startsWith(item.path),
    );

    return index < 0 ? 0 : index;
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    final selectedIndex = getIndex(location);

    return LayoutBuilder(
      builder: (context, constraints) {
        final wide = constraints.maxWidth >= 700;

        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Craft POS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none),
              ),
              const SizedBox(width: 12),
            ],
          ),
          body: Row(
            children: [
              if (wide)
                NavigationRail(
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (index) {
                    context.go(destinations[index].path);
                  },
                  labelType: NavigationRailLabelType.all,
                  destinations: destinations.map((item) {
                    return NavigationRailDestination(
                      icon: Icon(item.icon),
                      selectedIcon: Icon(item.selected),
                      label: Text(item.label),
                    );
                  }).toList(),
                ),
              Expanded(child: child),
            ],
          ),
          bottomNavigationBar: wide
              ? null
              : NavigationBar(
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (index) {
                    context.go(destinations[index].path);
                  },
                  destinations: destinations.map((item) {
                    return NavigationDestination(
                      icon: Icon(item.icon),
                      selectedIcon: Icon(item.selected),
                      label: item.label,
                    );
                  }).toList(),
                ),
        );
      },
    );
  }
}
