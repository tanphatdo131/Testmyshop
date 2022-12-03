import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/ui/shared/app_drawer.dart';
import '../shared/app_drawer.dart';

import 'user_product_list_tile.dart';
import 'product_manager.dart';

class UserProductsScreen extends StatelessWidget { 
    static const routeName = '/user-products';
  const UserProductsScreen ({super.key});
@override
Widget build (BuildContext context) {
  final productsManager = ProductsManager ();
return Scaffold (
    appBar: AppBar (
    title: const Text('Your Products'),
    actions: <Widget>[
      buildAddButton(),
    ],

),
  body: RefreshIndicator(
    onRefresh: () async => print('refresh products'), 
    child: buildUserProductListView(productsManager),
  ),
  drawer: const AppDrawer(),
  
);
}
Widget buildUserProductListView(ProductsManager productsManager) {
  return Consumer<ProductsManager>(
    builder: (ctx, productsManager, child) {
      return ListView.builder(
        itemCount: productsManager.itemCout,
        itemBuilder: (ctx, i) => Column(
          children: [
            UserProductListTile(
              productsManager.item[i],
        ),
        const Divider (),
      ],
    ),
  );
},
);
}

Widget buildAddButton() {
  return IconButton(
    icon: const Icon(Icons.add),
    onPressed: () {
      print('Go to edit product screen');
    },
  );
}
}