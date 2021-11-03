import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual/widget_global/appbar_global.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: Appbar_global(
        titulo: 'Detalhe',
        isShoppingCart: false,
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/shopping_cart');
        },
        child: const Text('Ir para carrinho'),
      ),
    );
  }
}
