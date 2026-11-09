import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:craft_pos/app.dart';
import 'package:craft_pos/core/database/app_database.dart';

void main() {
  testWidgets('App renders without crashing', (WidgetTester tester) async {
    // 1. Initialize the database using the standard constructor
    final testDb = AppDatabase();

    // 2. Build the app and pass the database
    await tester.pumpWidget(App(database: testDb));

    // 3. Verify the app rendered (e.g., looking for the MaterialApp widget)
    expect(find.byType(MaterialApp), findsOneWidget);

    // 4. Clean up: Close the database connection to release resources
    await testDb.close();
  });
}