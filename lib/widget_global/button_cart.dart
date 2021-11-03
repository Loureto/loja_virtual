import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button_cart extends StatelessWidget {
  const Button_cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/shopping_cart');
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            bottomLeft: Radius.circular(100),
          ),
          color: Colors.white,
        ),
        alignment: Alignment.centerRight,
        height: 30,
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: const Image(
          height: 30,
          image: AssetImage('util/assets/icon/carrinho.png'),
        ),
      ),
    );
  }
}
