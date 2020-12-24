import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/products.dart';
import '../providers/products.dart';
import '../widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final List<Product> loadedProducts = productsData.items;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => ProductItem(
        id: loadedProducts[index].id,
        imageUrl: loadedProducts[index].imageUrl,
        title: loadedProducts[index].title,
      ),
      padding: const EdgeInsets.all(10.0),
      itemCount: loadedProducts.length,
    );
  }
}
