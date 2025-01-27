import 'package:flutter/material.dart';
import 'package:mulli_flutter/presentation/pages/product/product_upload_page.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('쇼핑'),
      ),
      body: const Center(
        child: Text('쇼핑 페이지'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductUploadPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
