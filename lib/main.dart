import 'package:flutter/material.dart';
import 'package:test/ui/product_overview_screen.dart';
import 'package:test/ui/products/product_detail_screen.dart';
import 'package:test/ui/products/product_manager.dart';
import 'package:test/ui/products/user_products_screen.dart';
import 'ui/cart/cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);
  
  @override
  Widget build (BuildContext context) {
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
      home: const SafeArea(
          child: CartScreen(),
            //UserProductsScreen(),
            //ProductsOverviewScreen(),
            //ProductsManager().item[0],
        ),
      );
  }
}