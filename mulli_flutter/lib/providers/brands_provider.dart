import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mulli_client/mulli_client.dart';
import 'client_provider.dart';

// Brands Provider
final brandsProvider = FutureProvider<List<Brands>>((ref) async {
  final client = ref.watch(clientProvider);
  return await client.brands.getAllBrands();
});
