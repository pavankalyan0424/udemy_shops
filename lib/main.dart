import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_shops/pages/product_detail.dart';
import 'package:udemy_shops/providers/products.dart';

import './pages/products_overview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        title: 'Shops',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Lato',
        ),
        routes: {
          ProductDetail.routeName: (ctx) => ProductDetail(),
        },
        home: ProductOverViewPage(),
      ),
    );
  }
}
