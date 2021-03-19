import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/utils/mytheme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPage({Key key, this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(CupertinoIcons.back),
        backgroundColor: Mytheme.creamColor,
      ),
      backgroundColor: Mytheme.creamColor,
      body: SafeArea(
        child: ListView(
          children: [
            Hero(
              child: Image.network(catalog.image),
              tag: catalog.id,
            ),
          ],
        ).p16(),
      ),
    );
  }
}
