import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;
import 'package:uuid/uuid.dart';
import '../../core/database/app_database.dart';

class CategoryManagementScreen extends StatefulWidget {
  final AppDatabase db;
  final String businessId;
  const CategoryManagementScreen({super.key, required this.db, required this.businessId});

  @override
  State<CategoryManagementScreen> createState() => _CategoryManagementScreenState();
}

class _CategoryManagementScreenState extends State<CategoryManagementScreen> {
  final _nameController = TextEditingController();
  final _uuid = const Uuid();

  Future<void> _addCategory() async {
    final name = _nameController.text.trim();
    if (name.isEmpty) return;

    // Check for duplicates
    final existing = await (widget.db.select(widget.db.categories)
      ..where((c) => c.businessId.equals(widget.businessId) & c.name.equals(name)))
        .get();

    if (existing.isNotEmpty) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Category already exists')));
      return;
    }

    await widget.db.into(widget.db.categories).insert(
      CategoriesCompanion.insert(
        id: _uuid.v4(),
        businessId: widget.businessId,
        name: name,
      ),
    );

    _nameController.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(child: TextField(controller: _nameController, decoration: const InputDecoration(labelText: 'New Category Name'))),
                IconButton(onPressed: _addCategory, icon: const Icon(Icons.add)),
              ],
            ),
          ),
          Expanded(
            child: StreamBuilder<List<Category>>(
              stream: (widget.db.select(widget.db.categories)
                ..where((c) => c.businessId.equals(widget.businessId)))
                  .watch(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
                final categories = snapshot.data!;

                return ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final cat = categories[index];
                    return ListTile(
                      title: Text(cat.name),
                      // In a full implementation, you would join with products to count them here.
                      subtitle: const Text('Tap to view products'),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}