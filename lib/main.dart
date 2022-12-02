import 'package:flutter/material.dart';
import 'package:test/ui/products/product_overview_screen.dart';
import 'package:test/ui/products/product_detail_screen.dart';
import 'package:test/ui/products/product_manager.dart';
import 'package:test/ui/products/user_products_screen.dart';
import 'ui/cart/cart_screen.dart';
import 'ui/orders/orders_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
        ).copyWith(
          secondary: Colors.deepOrange,
        ),
      ),
      home: const ProductsOverviewScreen(),
      routes: {
        CartScreen.routeName:
              (ctx) => const CartScreen(),
        OrdersScreen.routeName: 
              (ctx) => const OrdersScreen(),
        UserProductsScreen.routeName:
              (ctx) => const UserProductsScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == ProducDetailScreen.routeName) {
            final productId = settings.arguments as String;
            return MaterialPageRoute(
              builder: (ctx) {
                return ProducDetailScreen(
                  ProductsManager().findById(productId)!,
                );
              },
            
            );
        }
        return null;
      },
          //child: OrdersScreen(),
            //CartScreen(),
            //UserProductsScreen(),
            //ProductsOverviewScreen(),
    );   //ProductsManager().item[0],
    
  }
}
