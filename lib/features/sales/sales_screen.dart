import 'package:flutter/material.dart';
import '../../core/database/app_database.dart';
import '../../core/providers/product_provider.dart';
import '../../core/providers/sales_provider.dart';
import '../../core/theme/app_theme.dart';

class SalesScreen extends StatefulWidget {
  final ProductProvider productProvider;
  final SalesProvider salesProvider;

  const SalesScreen({super.key, required this.productProvider, required this.salesProvider});

  @override
  State<SalesScreen> createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> {
  final List<CartItem> _cart = [];
  String _searchQuery = '';

  int get _cartTotalMinor => _cart.fold(0, (sum, item) => sum + (item.product.sellingPriceMinor * item.quantityMilli ~/ 1000));

  void _addToCart(Product product) {
    setState(() {
      final existing = _cart.indexWhere((i) => i.product.id == product.id);
      if (existing >= 0) {
        _cart[existing].quantityMilli += 1000;
      } else {
        _cart.add(CartItem(product: product));
      }
    });
  }

  void _removeFromCart(int index) {
    setState(() {
      if (_cart[index].quantityMilli > 1000) {
        _cart[index].quantityMilli -= 1000;
      } else {
        _cart.removeAt(index);
      }
    });
  }

  Future<void> _checkout() async {
    if (_cart.isEmpty) return;

    await widget.salesProvider.completeSale(
      cart: _cart,
      totalAmountMinor: _cartTotalMinor,
      paymentMethod: 'Cash',
    );

    setState(() => _cart.clear());
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Sale Successful!'), backgroundColor: AppTheme.primaryGreen),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Sale'),
        leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context)),
      ),
      body: Row(
        children: [
          // LEFT: Product Grid
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search products...',
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
                    ),
                    onChanged: (v) => setState(() => _searchQuery = v.toLowerCase()),
                  ),
                ),
                Expanded(
                  child: StreamBuilder<List<Product>>(
                    stream: widget.productProvider.productsStream,
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
                      final prods = snapshot.data!.where((p) => p.name.toLowerCase().contains(_searchQuery)).toList();

                      return GridView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 0.85,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemCount: prods.length,
                        itemBuilder: (context, index) {
                          final p = prods[index];
                          return GestureDetector(
                            onTap: () => _addToCart(p),
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(8)),
                                      child: const Center(child: Icon(Icons.image, color: Colors.grey)),
                                    ),
                                    Text(p.name, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.bold)),
                                    Text('KSh ${(p.sellingPriceMinor / 100).toStringAsFixed(2)}', style: const TextStyle(color: AppTheme.primaryGreen, fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // RIGHT: Cart & Checkout
          Container(
            width: 350,
            color: Colors.white,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Current Order', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Icon(Icons.delete_outline, color: Colors.grey),
                    ],
                  ),
                ),
                const Divider(height: 1),
                Expanded(
                  child: _cart.isEmpty
                      ? const Center(child: Text('Cart is empty', style: TextStyle(color: Colors.grey)))
                      : ListView.builder(
                    itemCount: _cart.length,
                    itemBuilder: (context, index) {
                      final item = _cart[index];
                      return ListTile(
                        title: Text(item.product.name, style: const TextStyle(fontWeight: FontWeight.w500)),
                        subtitle: Text('KSh ${(item.product.sellingPriceMinor / 100).toStringAsFixed(2)}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(icon: const Icon(Icons.remove_circle_outline, size: 20), onPressed: () => _removeFromCart(index)),
                            Text('${item.quantityMilli ~/ 1000}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            IconButton(icon: const Icon(Icons.add_circle_outline, size: 20, color: AppTheme.primaryGreen), onPressed: () => _addToCart(item.product)),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const Divider(height: 1),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Total', style: TextStyle(fontSize: 16, color: AppTheme.textLight)),
                          Text('KSh ${(_cartTotalMinor / 100).toStringAsFixed(2)}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppTheme.textDark)),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _cart.isEmpty ? null : _checkout,
                          child: const Text('Checkout & Pay'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}