import 'package:mulli_client/mulli_client.dart';

abstract class ProductDataSource {
  Future<void> createProduct(Products product);
}
