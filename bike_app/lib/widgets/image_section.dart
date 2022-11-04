import 'package:flutter/material.dart';
import 'package:bike_app/model/product.dart';
import 'package:provider/provider.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = context.watch<Product>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: Image.asset(product.imageAsset)),
      ],
    );
  }
}
