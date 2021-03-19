import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/mytheme.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart"),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Text("hello"),
      ),
    );
  }
}
