import 'package:bike_app/widgets/info_section.dart';
import 'package:bike_app/widgets/specifications.dart';
import 'package:flutter/material.dart';
import 'package:bike_app/model/product.dart';
import 'package:bike_app/widgets/image_section.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  final Product product;
  const ProductScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: product,
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: const [
                Expanded(flex: 4, child: ImageSection()),
                Expanded(flex: 4, child: InfoSection()),
                Expanded(flex: 4, child: Specifications()),
              ],
            ),
            const SafeArea(
              child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Icon(Icons.favorite_outline),
                  )),
            ),
            const SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: BackButton(),
                ),
              ),
            ),
            const Align(alignment: Alignment.bottomLeft, child: _Price()),
            const Align(
                alignment: Alignment.bottomRight, child: _AddToCartButton()),
          ],
        ),
      ),
    );
  }
}

class _AddToCartButton extends StatelessWidget {
  const _AddToCartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
        ),
      ),
      child: const Center(
        child: Text(
          "Add to cart",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class _Price extends StatelessWidget {
  const _Price({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = context.watch<Product>();
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        "${product.price}€",
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Colors.amber,
        ),
      ),
    );
  }
}
