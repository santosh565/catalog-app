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
        children: [_CartList().p32().expand(), Divider(), _CartTotal()],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          "\$${999}".text.xl5.color(context.theme.accentColor).make(),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: Duration(seconds: 1),
                  content: "Buying not supported yet".text.make(),
                ),
              );
            },
            child: "Buy".text.white.make(),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.buttonColor)),
          ).w32(context)
        ],
      ),
    ).px16();
  }
}

class _CartList extends StatefulWidget {
  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        title: "Item".text.make(),
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
      ),
    );
  }
}
