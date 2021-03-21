import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_shops/pages/edit_product_screen.dart';
import 'package:udemy_shops/providers/products.dart';

class UserProductItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String id;

  const UserProductItem({this.title, this.imageUrl, this.id});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(title),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
          trailing: Container(
            width: 100,
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context)
                      .pushNamed(EditProductScreen.routeName, arguments: id),
                  icon: Icon(
                    Icons.edit,
                  ),
                  color: Theme.of(context).primaryColor,
                ),
                IconButton(
                  onPressed: () {
                    Provider.of<Products>(context, listen: false)
                        .deleteProduct(id);
                  },
                  icon: Icon(
                    Icons.delete,
                  ),
                  color: Theme.of(context).errorColor,
                ),
              ],
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
