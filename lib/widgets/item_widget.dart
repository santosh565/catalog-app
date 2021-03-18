import 'package:flutter/material.dart';
import '../models/catalog.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => debugPrint('${product.price}'),
        leading: Image.network(product.image),
        title: Text(product.name),
        subtitle: Text(product.desc),
        trailing: Text(
          "\$${product.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
