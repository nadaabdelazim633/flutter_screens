import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> products = const [
    {"title": "Product 1", "description": "Description for product 1"},
    {"title": "Product 2", "description": "Description for product 2"},
    {"title": "Product 3", "description": "Description for product 3"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: Text(product['title']!),
              subtitle: Text(product['description']!),
            ),
          );
        },
      ),
    );
  }
}

