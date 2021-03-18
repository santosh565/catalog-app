import 'package:flutter/material.dart';

import '../models/catalog.dart';
import '../widgets/item_widget.dart';
import '../widgets/my_drawer.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.item.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel.item[index],
          );
        },
      ),
    );
  }
}
