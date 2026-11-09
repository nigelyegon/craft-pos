import 'package:flutter/material.dart';
import '../../core/providers/category_provider.dart';

class CategoryFormScreen extends StatefulWidget {
  final CategoryProvider provider;
  const CategoryFormScreen({super.key, required this.provider});

  @override
  State<CategoryFormScreen> createState() => _CategoryFormScreenState();
}

class _CategoryFormScreenState extends State<CategoryFormScreen> {
  final _nameController = TextEditingController();

  Future<void> _save() async {
    final name = _nameController.text.trim();
    if (name.isEmpty) return;

    final success = await widget.provider.addCategory(name);
    if (success && mounted) {
      Navigator.pop(context);
    } else if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Category already exists!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Category'),
        actions: [IconButton(onPressed: _save, icon: const Icon(Icons.save))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _nameController,
          decoration: const InputDecoration(labelText: 'Category Name'),
        ),
      ),
    );
  }
}