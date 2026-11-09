import 'package:flutter/material.dart';
import '../../core/database/app_database.dart';
import '../../core/providers/category_provider.dart';
import '../../core/providers/product_provider.dart';
import '../../core/theme/app_theme.dart';
import '../categories/categories_screen.dart';
import 'product_form_screen.dart';

class ProductsScreen extends StatefulWidget {
  final ProductProvider provider;
  final CategoryProvider categoryProvider;

  const ProductsScreen({
    super.key,
    required this.provider,
    required this.categoryProvider,
  });

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          IconButton(
            icon: const Icon(Icons.category_outlined),
            tooltip: 'Manage Categories',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CategoriesScreen(provider: widget.categoryProvider),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search products...',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (val) => setState(() => _searchQuery = val.toLowerCase()),
            ),
          ),

          // Product List
          Expanded(
            child: StreamBuilder<List<Product>>(
              stream: widget.provider.productsStream,
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());

                final products = snapshot.data!.where((p) {
                  return p.name.toLowerCase().contains(_searchQuery) ||
                      (p.sku?.toLowerCase().contains(_searchQuery) ?? false);
                }).toList();

                if (products.isEmpty) {
                  return const Center(
                    child: Text('No products found.', style: TextStyle(color: AppTheme.textLight)),
                  );
                }

                return ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  itemCount: products.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    final p = products[index];

                    return FutureBuilder<int>(
                      future: widget.provider.db.getProductStock(p.id),
                      builder: (context, stockSnapshot) {
                        final stockMilli = stockSnapshot.data ?? 0;
                        final stockDouble = stockMilli / 1000.0;
                        final isLow = stockMilli <= p.reorderLevelMilli;

                        return Card(
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            title: Text(
                              p.name,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: AppTheme.textDark),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                'KES ${(p.sellingPriceMinor / 100).toStringAsFixed(2)}',
                                style: const TextStyle(color: AppTheme.primaryGreen, fontWeight: FontWeight.w600),
                              ),
                            ),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Stock: $stockDouble',
                                  style: TextStyle(
                                    color: isLow ? AppTheme.warningRed : AppTheme.textDark,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                if (isLow)
                                  const Text(
                                    'LOW STOCK',
                                    style: TextStyle(color: AppTheme.warningRed, fontSize: 10, fontWeight: FontWeight.bold),
                                  ),
                              ],
                            ),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ProductFormScreen(
                                  provider: widget.provider,
                                  product: p,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductFormScreen(provider: widget.provider),
          ),
        ),
      ),
    );
  }
}