import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/database/app_database.dart';
import '../../core/theme/app_theme.dart';

class DashboardScreen extends StatelessWidget {
  final AppDatabase db;
  final String businessId;

  const DashboardScreen({super.key, required this.db, required this.businessId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Green Header Section
            Container(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 30),
              decoration: const BoxDecoration(
                color: AppTheme.primaryGreen,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          CircleAvatar(backgroundColor: Colors.white24, child: Icon(Icons.store, color: Colors.white)),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Local Dealer', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                              Text('Kigali, Rwanda', style: TextStyle(color: Colors.white70, fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code_scanner, color: Colors.white)),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Today's Sales & Profit Cards
                  Row(
                    children: [
                      _buildHeaderMetricCard('Today\'s Sales', 'KSh 15,000'),
                      const SizedBox(width: 12),
                      _buildHeaderMetricCard('Today\'s Profit', 'KSh 4,500'),
                    ],
                  ),
                ],
              ),
            ),

            // 2. Quick Actions Row
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildQuickAction(Icons.shopping_cart, 'New Sale', onTap: () => context.go('/sales')),
                  _buildQuickAction(Icons.inventory, 'Stock', onTap: () => context.go('/inventory')),
                  _buildQuickAction(Icons.add_box, 'Add Product', onTap: () => context.go('/products')),
                  _buildQuickAction(Icons.bar_chart, 'Reports', onTap: () => context.go('/reports')),
                ],
              ),
            ),

            // 3. Financial Reports Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Financial Reports', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppTheme.textDark)),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      _buildFinancialCard('Income', 'KSh 20,000', '+2.5%', Colors.green),
                      const SizedBox(width: 12),
                      _buildFinancialCard('Expenses', 'KSh 5,000', '+1.2%', Colors.red),
                    ],
                  ),
                ],
              ),
            ),

            // 4. Recent Transactions
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Today\'s Transaction', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppTheme.textDark)),
                  const SizedBox(height: 12),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildTransactionMetric(Icons.receipt_long, '2,250', 'Total Transaction', Colors.green),
                          Container(width: 1, height: 40, color: Colors.grey.shade300),
                          _buildTransactionMetric(Icons.inventory_2, '12,650', 'Total Products Sold', Colors.orange),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderMetricCard(String title, String value) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(color: Colors.white70, fontSize: 12)),
            const SizedBox(height: 8),
            Text(value, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAction(IconData icon, String label, {required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppTheme.cardWhite,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 4))],
            ),
            child: Icon(icon, color: AppTheme.primaryGreen, size: 28),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 12, color: AppTheme.textDark, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildFinancialCard(String title, String amount, String percent, Color percentColor) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: AppTheme.cardWhite, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 12, color: AppTheme.textLight)),
            const SizedBox(height: 8),
            Text(amount, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppTheme.textDark)),
            const SizedBox(height: 8),
            Text(percent, style: TextStyle(fontSize: 12, color: percentColor, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionMetric(IconData icon, String value, String label, Color iconColor) {
    return Row(
      children: [
        CircleAvatar(backgroundColor: iconColor.withOpacity(0.1), child: Icon(icon, color: iconColor, size: 20)),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(label, style: const TextStyle(fontSize: 10, color: AppTheme.textLight)),
          ],
        ),
      ],
    );
  }
}