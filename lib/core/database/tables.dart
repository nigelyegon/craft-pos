import 'package:drift/drift.dart';

class Businesses extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get phone => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get address => text().nullable()();
  TextColumn get currency => text().withDefault(const Constant('KES'))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

class Categories extends Table {
  TextColumn get id => text()();
  TextColumn get businessId => text().references(Businesses, #id, onDelete: KeyAction.cascade)();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

class Products extends Table {
  TextColumn get id => text()();
  TextColumn get businessId => text().references(Businesses, #id, onDelete: KeyAction.cascade)();
  TextColumn get categoryId => text().nullable().references(Categories, #id, onDelete: KeyAction.setNull)();
  TextColumn get name => text()();
  TextColumn get sku => text().nullable()();
  TextColumn get barcode => text().nullable()();

  // Money is stored in minor units.
  // KES 100.50 = 10050.
  IntColumn get sellingPriceMinor => integer().withDefault(const Constant(0))();
  IntColumn get costPriceMinor => integer().withDefault(const Constant(0))();

  // REMOVED quantityMilli from here. 
  // Current stock is calculated dynamically via the StockMovements ledger.

  // Quantities use thousandths to support fractional stock.
  // 5.000 units = 5000.
  IntColumn get reorderLevelMilli => integer().withDefault(const Constant(5000))();

  TextColumn get unit => text().withDefault(const Constant('pcs'))();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

class Sales extends Table {
  TextColumn get id => text()();
  TextColumn get businessId => text().references(Businesses, #id, onDelete: KeyAction.cascade)();
  IntColumn get totalAmountMinor => integer().withDefault(const Constant(0))();
  TextColumn get paymentMethod => text().nullable()();
  TextColumn get status => text().withDefault(const Constant('completed'))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

class SaleItems extends Table {
  TextColumn get id => text()();
  TextColumn get saleId => text().references(Sales, #id, onDelete: KeyAction.cascade)();
  TextColumn get productId => text().references(Products, #id, onDelete: KeyAction.restrict)();

  IntColumn get quantityMilli => integer()();
  IntColumn get unitPriceMinor => integer()();

  // Added costPriceMinor to lock in the profit margin at the time of sale
  IntColumn get costPriceMinor => integer().withDefault(const Constant(0))();

  IntColumn get lineTotalMinor => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

// Added a blank line here for proper formatting
class StockMovements extends Table {
  TextColumn get id => text()();
  TextColumn get businessId => text().references(Businesses, #id, onDelete: KeyAction.cascade)();
  TextColumn get productId => text().references(Products, #id, onDelete: KeyAction.cascade)();

  // 'opening_stock', 'purchase', 'sale', 'adjustment', 'return'
  TextColumn get type => text()();

  IntColumn get quantityMilli => integer()(); // Positive for IN, Negative for OUT
  IntColumn get unitCostMinor => integer().nullable()();
  TextColumn get referenceId => text().nullable()();
  TextColumn get note => text().nullable()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}