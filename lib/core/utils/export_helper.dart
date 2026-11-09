import 'dart:io';
import 'package:csv/csv.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import '../database/app_database.dart';

class ExportHelper {
  static Future<void> exportSalesToCsv(AppDatabase db, String businessId) async {
    final sales = await (db.select(db.sales)..where((s) => s.businessId.equals(businessId))).get();

    List<List<dynamic>> rows = [
      ['Sale ID', 'Date', 'Payment Method', 'Total Amount (KES)']
    ];

    for (var sale in sales) {
      rows.add([
        sale.id,
        sale.createdAt.toIso8601String(),
        sale.paymentMethod ?? 'Unknown',
        (sale.totalAmountMinor / 100).toStringAsFixed(2),
      ]);
    }

    String csvData = const ListToCsvConverter().convert(rows);

    // Save to temporary file and share
    final directory = await getTemporaryDirectory();
    final path = '${directory.path}/sales_export_${DateTime.now().millisecondsSinceEpoch}.csv';
    final file = File(path);
    await file.writeAsString(csvData);

    // Open share sheet so they can save to Drive/WhatsApp/Email
    await Share.shareXFiles([XFile(path)], text: 'Craft POS Sales Export');
  }
}