import 'package:go_router/go_router.dart';

import '../../core/database/app_database.dart';
import '../../core/providers/category_provider.dart';
import '../../core/providers/product_provider.dart';
import '../../core/providers/report_provider.dart';
import '../../core/providers/sales_provider.dart';
import '../../features/business/business_setup_screen.dart';
import '../../features/dashboard/dashboard_screen.dart';
import '../../features/inventory/inventory_screen.dart';
import '../../features/products/products_screen.dart';
import '../../features/sales/sales_screen.dart';
import '../../features/reports/reports_screen.dart';
import '../../shared/widgets/app_shell.dart';

GoRouter createAppRouter(AppDatabase db, {String? initialBusinessId}) {
  final businessId = initialBusinessId ?? 'default-business-id';

  // Initialize Providers
  final productProvider = ProductProvider(db, businessId);
  final categoryProvider = CategoryProvider(db, businessId);
  final salesProvider = SalesProvider(db, businessId);
  final reportProvider = ReportProvider(db, businessId);

  return GoRouter(
    initialLocation: '/dashboard',
    routes: [
      GoRoute(
        path: '/setup',
        builder: (context, state) => const BusinessSetupScreen(),
      ),
      ShellRoute(
        builder: (context, state, child) => AppShell(child: child),
        routes: [
          GoRoute(
            path: '/dashboard',
            builder: (context, state) => DashboardScreen(
              db: db,
              businessId: businessId,
            ),
          ),
          GoRoute(
            path: '/products',
            // FIX: Pass categoryProvider to ProductsScreen
            builder: (context, state) => ProductsScreen(
              provider: productProvider,
              categoryProvider: categoryProvider,
            ),
          ),
          GoRoute(
            path: '/inventory',
            builder: (context, state) => InventoryScreen(provider: productProvider),
          ),
          GoRoute(
            path: '/sales',
            builder: (context, state) => SalesScreen(
              productProvider: productProvider,
              salesProvider: salesProvider,
            ),
          ),
          GoRoute(
            path: '/reports',
            builder: (context, state) => ReportsScreen(provider: reportProvider),
          ),
        ],
      ),
    ],
  );
}