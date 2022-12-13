import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/utils/app_routes.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
          onTap: () {
            Navigator.of(context)
                .pushNamed(AppRoutes.PRODUCT_DETAIL, arguments: product);
          },
        ),
        footer: GridTileBar(
          title: Text(product.title),
          leading: IconButton(
            onPressed: () => null,
            icon: Icon(Icons.favorite),
            color: Theme.of(context).accentColor,
          ),
          trailing: IconButton(
            onPressed: () => null,
            icon: Icon(Icons.shopping_cart),
            color: Theme.of(context).accentColor,
          ),
          backgroundColor: Colors.black87,
        ),
      ),
    );
  }
}
