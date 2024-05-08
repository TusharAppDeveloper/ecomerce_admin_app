import 'package:ecomerce_admin_app/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewProductPage extends StatelessWidget {
  static const String routeName = '/viewProduct';

  const ViewProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View products'),
      ),
      body: Consumer<ProductProvider>(
        builder:(context, provider, child) => provider.productList.isEmpty ?
        const Center(child: Text('No products found'),)
        : ListView.builder(
          itemCount: provider.productList.length,
          itemBuilder: (context, index){
            final product = provider.productList[index];
            return ListTile(
              title: Text(product.productName),
              subtitle: Text('stock:${product.stock}'),
            );
          },
        ),
      ),
    );
  }
}
