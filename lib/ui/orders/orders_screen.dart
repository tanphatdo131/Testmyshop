import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:test/ui/screens.dart';

import 'order_manager.dart';
import 'order_item_card.dart';

import '../shared/app_drawer.dart';

// class OrdersScreen extends StatelessWidget {
//   static const routeName = '/orders';
//   const OrdersScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     print('building order');
//     final ordersManager = OrdersManager();
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Your Orders'),
//       ),
//       drawer: const AppDrawer(),
//       body: ListView.builder(
//         itemCount: ordersManager.orderCount,
//         itemBuilder: (ctx, i) => OrderItemCard(ordersManager.orders[i]),
//         ),
//       );
//   }
// }
class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';
  const OrdersScreen({super.key});

  @override
   Widget build(BuildContext context) {
    print('building orders');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer: const AppDrawer(),
      body: Consumer<OrdersManager>(
        builder: (ctx, ordersManager, child) {
          return ListView.builder(
            itemCount: ordersManager.orderCount,
            itemBuilder: (ctx, i) => OrderItemCard(ordersManager.orders[i]),
          );
        },
      ),
    );
  }
}