import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/product_detail.dart';
import '../providers/product.dart';
import '../providers/cart.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Product product = Provider.of(context, listen: false);
    final Cart cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            ProductDetail.routeName,
            arguments: product.id,
          );
        },
        child: GridTile(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            leading: Consumer<Product>(
              builder: (context, product, child) => IconButton(
                icon: Icon(
                  product.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () {
                  product.toggleFavoriteStatus();
                },
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {
                 cart.addItem(product.id, product.price, product.title);
              },
            ),
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.black87,
          ),
        ),
      ),
    );
  }
}
