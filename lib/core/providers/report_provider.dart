import 'package:flutter/material.dart';
import 'package:drift/drift.dart';
import '../database/app_database.dart';

class ReportProvider extends ChangeNotifier {
  final AppDatabase db;
  final String businessId;

  ReportProvider(this.db, this.businessId);

  Future<Map<String, int>> getDailySummary() async {
    final now = DateTime.now();
    final start = DateTime(now.year, now.month, now.day);
    final end = start.add(const Duration(days: 1));

    // 1. Total Sales
    final salesQuery = db.select(db.sales)
      ..where((s) => s.businessId.equals(businessId))
      ..where((s) => s.status.equals('completed'))
      ..where((s) => s.createdAt.isBiggerOrEqualValue(start))
      ..where((s) => s.createdAt.isSmallerThanValue(end));

    final sales = await salesQuery.get();
    final totalSales = sales.fold<int>(0, (sum, s) => sum + s.totalAmountMinor);

    // 2. Profit Calculation (Requires joining SaleItems and Products)
    final profitQuery = db.customSelect(
      '''
      SELECT SUM((si.unit_price_minor - si.cost_price_minor) * (si.quantity_milli / 1000.0)) as profit
      FROM sale_items si
      JOIN sales s ON s.id = si.sale_id
      WHERE s.business_id = ? AND s.status = 'completed' 
      AND s.created_at >= ? AND s.created_at < ?
      ''',
      variables: [
        Variable.withString(businessId),
        Variable.withDateTime(start),
        Variable.withDateTime(end),
      ],
      readsFrom: {db.sales, db.saleItems},
    );
    final profitResult = await profitQuery.getSingleOrNull();
    final totalProfit = (profitResult?.read<double?>('profit') ?? 0).round();

    // 3. Total Stock Valuation
    final stockValueQuery = db.customSelect(
      '''
      SELECT SUM(sm.total_qty * p.cost_price_minor) as total_value
      FROM (
        SELECT product_id, SUM(quantity_milli) as total_qty
        FROM stock_movements GROUP BY product_id
      ) sm
      JOIN products p ON p.id = sm.product_id
      WHERE p.business_id = ? AND p.is_active = 1
      ''',
      variables: [Variable.withString(businessId)],
      readsFrom: {db.products, db.stockMovements},
    );
    final stockResult = await stockValueQuery.getSingleOrNull();
    final totalStockValue = ((stockResult?.read<int?>('total_value') ?? 0) ~/ 1000);

    return {
      'sales': totalSales,
      'profit': totalProfit,
      'stockValue': totalStockValue,
    };
  }
}