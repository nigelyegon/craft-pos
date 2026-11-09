import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;
import 'package:uuid/uuid.dart';
import '../database/app_database.dart';

class ProductProvider extends ChangeNotifier {
  final AppDatabase db;
  final String businessId;

  ProductProvider(this.db, this.businessId);

  Stream<List<Product>> get productsStream => (db.select(db.products)
    ..where((p) => p.businessId.equals(businessId))
    ..where((p) => p.isActive.equals(true)))
      .watch();

  Future<void> saveProduct({
    String? id,
    required String name,
    String? sku,
    String? barcode,
    String? categoryId,
    required int costPriceMinor,
    required int sellingPriceMinor,
    required int reorderLevelMilli,
    int? openingStockMilli,
  }) async {
    final productId = id ?? const Uuid().v4();

    // We wrap this in a transaction so if stock movement fails,
    // the product isn't saved either.
    await db.transaction(() async {
      await db.into(db.products).insertOnConflictUpdate(
        ProductsCompanion(
          id: drift.Value(productId),
          businessId: drift.Value(businessId),
          categoryId: drift.Value(categoryId),
          name: drift.Value(name),
          sku: drift.Value(sku),
          barcode: drift.Value(barcode),
          costPriceMinor: drift.Value(costPriceMinor),
          sellingPriceMinor: drift.Value(sellingPriceMinor),
          reorderLevelMilli: drift.Value(reorderLevelMilli),
        ),
      );

      // ONLY create an opening stock movement if it's a new product
      // and a stock amount was provided.
      if (id == null && openingStockMilli != null && openingStockMilli > 0) {
        await db.into(db.stockMovements).insert(
          StockMovementsCompanion.insert(
            id: const Uuid().v4(),
            businessId: businessId,
            productId: productId,
            type: 'opening_stock',
            quantityMilli: openingStockMilli,
            unitCostMinor: drift.Value(costPriceMinor),
            note: const drift.Value('Initial stock setup'),
          ),
        );
      }
    });

    notifyListeners();
  }
}