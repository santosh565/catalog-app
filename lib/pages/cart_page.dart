import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/mytheme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart"),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [Placeholder().p32().expand(), Divider(), _CartTotal()],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
