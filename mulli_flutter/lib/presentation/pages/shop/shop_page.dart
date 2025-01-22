import 'package:flutter/material.dart';

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
    );
  }
}
