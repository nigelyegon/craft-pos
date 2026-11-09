import 'package:flutter/material.dart';
import '../../core/database/app_database.dart';
import '../../core/providers/category_provider.dart';
import 'category_form_screen.dart';

class CategoriesScreen extends StatelessWidget {
  final CategoryProvider provider;
  const CategoriesScreen({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: StreamBuilder<List<Category>>(
        stream: provider.categoriesStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          final cats = snapshot.data!;
          if (cats.isEmpty) return const Center(child: Text('No categories yet.'));

          return ListView.builder(
            itemCount: cats.length,
            itemBuilder: (context, index) {
              final cat = cats[index];
              return ListTile(
                title: Text(cat.name),
                subtitle: Text(cat.description ?? 'No description'),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => CategoryFormScreen(provider: provider)),
        ),
      ),
    );
  }
}