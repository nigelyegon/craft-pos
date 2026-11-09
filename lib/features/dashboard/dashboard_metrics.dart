
import '../../core/database/app_database.dart';

class DashboardMetrics {
  final int salesToday;
  final int transactionsToday;
  final int productCount;
  final int lowStockCount;

  const DashboardMetrics({
    required this.salesToday,
    required this.transactionsToday,
    required this.productCount,
    required this.lowStockCount,
  });

  static Future<DashboardMetrics> load(
    AppDatabase db,
    String businessId,
  ) async {
    final results = await Future.wait<int>([
      db.getTodaySales(businessId),
      db.getTodayTransactionCount(businessId),
      db.getProductCount(businessId),
      db.getLowStockCount(businessId),
    ]);

    return DashboardMetrics(
      salesToday: results[0],
      transactionsToday: results[1],
      productCount: results[2],
      lowStockCount: results[3],
    );
  }
}
