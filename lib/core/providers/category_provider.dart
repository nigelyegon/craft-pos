import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../database/app_database.dart';

class CategoryProvider extends ChangeNotifier {
  final AppDatabase db;
  final String businessId;

  CategoryProvider(this.db, this.businessId);

  /// Stream of categories for the current business.
  Stream<List<Category>> get categoriesStream =>
      (db.select(db.categories)..where((c) => c.businessId.equals(businessId))).watch();

  /// Adds a new category. Returns false if a duplicate name exists.
  Future<bool> addCategory(String name) async {
    final trimmedName = name.trim();
    if (trimmedName.isEmpty) return false;

    // FIX: Chain separate .where() calls instead of using & or .and()
    final query = db.select(db.categories)
      ..where((c) => c.businessId.equals(businessId))
      ..where((c) => c.name.equals(trimmedName));

    final existing = await query.get();

    if (existing.isNotEmpty) {
      return false; // Duplicate found
    }

    await db.into(db.categories).insert(
      CategoriesCompanion.insert(
        id: const Uuid().v4(),
        businessId: businessId,
        name: trimmedName,
      ),
    );

    notifyListeners(); // Good practice to notify listeners after mutation
    return true;
  }
}