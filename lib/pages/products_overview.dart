import 'package:flutter/material.dart';

import '../widgets/product_grid.dart';

enum FilterValue { Favorites, All }

class ProductOverViewPage extends StatefulWidget {
  @override
  _ProductOverViewPageState createState() => _ProductOverViewPageState();
}

class _ProductOverViewPageState extends State<ProductOverViewPage> {
  bool _showFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Shop',
        ),
        actions: [
          PopupMenuButton(
            onSelected: (FilterValue value) {
              setState(() {
                if (value == FilterValue.Favorites) {
                  _showFavorites = true;
                } else {
                  _showFavorites = false;
                }
              });
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(
                  'Only Favorites',
                ),
                value: FilterValue.Favorites,
              ),
              PopupMenuItem(
                child: Text(
                  'Show All',
                ),
                value: FilterValue.All,
              ),
            ],
          )
        ],
      ),
      body: ProductsGrid(
        showFavorite: _showFavorites,
      ),
    );
  }
}
