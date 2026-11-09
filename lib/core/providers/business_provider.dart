import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'database_provider.dart';

final businessProvider = FutureProvider((ref) async {
  final db = ref.watch(databaseProvider);

  return db.select(db.businesses).getSingleOrNull();
});
