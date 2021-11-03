import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual/widget_global/button_cart.dart';

// ignore: camel_case_types
class Appbar_global extends StatelessWidget with PreferredSizeWidget {
  final String titulo;
  final bool isShoppingCart;

  Appbar_global({required this.titulo, required this.isShoppingCart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          titulo,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey[300],
        elevation: 0.0,
        centerTitle: true,
        // ignore: prefer_const_literals_to_create_immutables
        actions: <Widget>[_verifyShoppingCart(isShoppingCart)],
      ),
    );
  }

  _verifyShoppingCart(bool isShoppingCart) {
    return isShoppingCart ? Container() : const Button_cart();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
