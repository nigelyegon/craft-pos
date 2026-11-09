import 'package:flutter/material.dart';
import '../../core/providers/report_provider.dart';

class ReportsScreen extends StatelessWidget {
  final ReportProvider provider;
  const ReportsScreen({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reports')),
      body: FutureBuilder<Map<String, int>>(
        future: provider.getDailySummary(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          final data = snapshot.data!;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildMetricCard('Today\'s Sales', 'KES ${(data['sales']! / 100).toStringAsFixed(2)}', Colors.blue),
                const SizedBox(height: 16),
                _buildMetricCard('Today\'s Profit', 'KES ${(data['profit']! / 100).toStringAsFixed(2)}', Colors.green),
                const SizedBox(height: 16),
                _buildMetricCard('Stock Valuation', 'KES ${(data['stockValue']! / 100).toStringAsFixed(2)}', Colors.orange),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildMetricCard(String title, String value, Color color) {
    return Card(
      elevation: 4,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Icon(Icons.analytics, color: color, size: 40),
        title: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        trailing: Text(value, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color)),
      ),
    );
  }
}