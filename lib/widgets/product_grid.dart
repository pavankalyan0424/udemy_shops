import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product.dart';
import '../providers/products.dart';
import '../widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavorite;

  const ProductsGrid({this.showFavorite});

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final List<Product> loadedProducts =
        showFavorite ? productsData.favoriteItems : productsData.items;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        child: ProductItem(),
        value: loadedProducts[index],
      ),
      padding: const EdgeInsets.all(10.0),
      itemCount: loadedProducts.length,
    );
  }
}
