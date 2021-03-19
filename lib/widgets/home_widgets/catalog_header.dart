import 'package:flutter/material.dart';
import '../../utils/mytheme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(context.accentColor).make(),
        "Trending Items".text.xl2.make(),
      ],
    );
  }
}
