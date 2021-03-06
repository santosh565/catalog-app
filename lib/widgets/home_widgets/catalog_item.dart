import 'package:flutter/material.dart';
import '../../pages/home_details_page.dart';
import '../../models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import 'add_to_cart.dart';
import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeDetailsPage(
              catalog: catalog,
            ),
          ),
        );
      },
      child: VxBox(
        child: Row(
          children: [
            Hero(tag: catalog.id, child: CatalogImage(image: catalog.image)),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.color(context.accentColor).bold.make(),
                catalog.desc.text.semiBold
                    .textStyle(context.captionStyle)
                    .make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${catalog.price}".text.bold.xl.make(),
                    AddToCart(
                      catalog: catalog,
                    )
                  ],
                ).pOnly(right: 8),
              ],
            ))
          ],
        ),
      ).color(context.cardColor).rounded.square(150).make().py16(),
    );
  }
}
