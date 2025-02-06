import 'package:mulli_client/mulli_client.dart';
import 'package:mulli_flutter/data/data_source/product_data_source.dart';

class ProductRemoteDataSourceImpl implements ProductDataSource {
  final Client client;

  ProductRemoteDataSourceImpl(this.client);

  @override
  Future<void> createProduct(Products product) async {
    // TODO: Implement with actual client call
  }
}
