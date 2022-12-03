import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'product_grid_tile.dart';
import 'product_manager.dart';

import '../../models/product.dart';

class ProductsGrid extends StatelessWidget {
final bool showFavorites;

const ProductsGrid (this.showFavorites, {super.key});

@override
Widget build(BuildContext context) {
  //Đọc ra danh sách các product sẽ được hiển thị từ ProductsManager
  final products = context.select<ProductsManager, List<Product>>(
    (productsManager) => showFavorites
        ? productsManager.favoriteItems
        : productsManager.item);

  final productsManager = ProductsManager();
  final product =


showFavorites ? productsManager.favoriteItems : productsManager.item;
 return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductGridTile (products[i]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 3/2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
   ),
  );
  }
}

