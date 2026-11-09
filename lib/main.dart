import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';
import 'core/database/app_database.dart';

void main() {
  // 1. Initialize the database ONCE
  final database = AppDatabase();

  // 2. Run the app, wrapping it in ProviderScope
  // ProviderScope is required if you ever use Riverpod (ref.watch) inside your widgets.
  runApp(
    ProviderScope(
      child: App(database: database),
    ),
  );
}