import 'package:flutter/material.dart';
import 'core/database/app_database.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

class App extends StatelessWidget {
  final AppDatabase database;

  const App({super.key, required this.database});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Craft POS',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // Use the new green theme
      routerConfig: createAppRouter(database),
    );
  }
}