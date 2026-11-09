import 'package:flutter/material.dart';
import '../../core/database/app_database.dart';
import '../../core/providers/product_provider.dart';

class ProductFormScreen extends StatefulWidget {
  final ProductProvider provider;
  final Product? product;

  const ProductFormScreen({super.key, required this.provider, this.product});

  @override
  State<ProductFormScreen> createState() => _ProductFormScreenState();
}

class _ProductFormScreenState extends State<ProductFormScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _skuController;
  late TextEditingController _buyingPriceController;
  late TextEditingController _sellingPriceController;
  late TextEditingController _openingStockController;
  late TextEditingController _reorderLevelController;
  String? _selectedCategoryId;

  @override
  void initState() {
    super.initState();
    final p = widget.product;

    _nameController = TextEditingController(text: p?.name ?? '');
    _skuController = TextEditingController(text: p?.sku ?? '');
    _buyingPriceController = TextEditingController(text: p != null ? (p.costPriceMinor / 100).toString() : '');
    _sellingPriceController = TextEditingController(text: p != null ? (p.sellingPriceMinor / 100).toString() : '');
    _openingStockController = TextEditingController(); // Only used for new products
    _reorderLevelController = TextEditingController(text: p != null ? (p.reorderLevelMilli / 1000).toString() : '5');
    _selectedCategoryId = p?.categoryId;
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    await widget.provider.saveProduct(
      id: widget.product?.id,
      name: _nameController.text.trim(),
      sku: _skuController.text.trim(),
      categoryId: _selectedCategoryId,
      costPriceMinor: ((double.tryParse(_buyingPriceController.text) ?? 0) * 100).toInt(),
      sellingPriceMinor: ((double.tryParse(_sellingPriceController.text) ?? 0) * 100).toInt(),
      reorderLevelMilli: ((double.tryParse(_reorderLevelController.text) ?? 5) * 1000).toInt(),
      openingStockMilli: ((double.tryParse(_openingStockController.text) ?? 0) * 1000).toInt(),
    );

    if (mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product == null ? 'Add Product' : 'Edit Product'),
        actions: [IconButton(onPressed: _save, icon: const Icon(Icons.save))],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Product Name *'),
              validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
            ),
            const SizedBox(height: 12),
            TextFormField(controller: _skuController, decoration: const InputDecoration(labelText: 'SKU')),
            const SizedBox(height: 12),

            // Category Dropdown
            StreamBuilder<List<Category>>(
              stream: (widget.provider.db.select(widget.provider.db.categories)
                ..where((c) => c.businessId.equals(widget.provider.businessId))).watch(),
              builder: (context, snapshot) {
                final cats = snapshot.data ?? [];
                return DropdownButtonFormField<String>(
                  initialValue: _selectedCategoryId,
                  decoration: const InputDecoration(labelText: 'Category'),
                  items: [
                    const DropdownMenuItem(value: null, child: Text('Uncategorised')),
                    ...cats.map((c) => DropdownMenuItem(value: c.id, child: Text(c.name))),
                  ],
                  onChanged: (val) => setState(() => _selectedCategoryId = val),
                );
              },
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(child: TextFormField(controller: _buyingPriceController, decoration: const InputDecoration(labelText: 'Buying Price (KES)'), keyboardType: TextInputType.number)),
                const SizedBox(width: 12),
                Expanded(child: TextFormField(controller: _sellingPriceController, decoration: const InputDecoration(labelText: 'Selling Price (KES)'), keyboardType: TextInputType.number)),
              ],
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                if (widget.product == null)
                  Expanded(
                    child: TextFormField(
                      controller: _openingStockController,
                      decoration: const InputDecoration(labelText: 'Opening Stock'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                if (widget.product == null) const SizedBox(width: 12),
                Expanded(
                  child: TextFormField(
                    controller: _reorderLevelController,
                    decoration: const InputDecoration(labelText: 'Low Stock Alert Level'),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}