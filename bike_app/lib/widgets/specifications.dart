import 'package:flutter/material.dart';
import 'package:bike_app/model/product.dart';
import 'package:provider/provider.dart';

class Specifications extends StatelessWidget {
  const Specifications({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = context.watch<Product>();
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Specifications",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 10),
              for (final feature in product.features)
                ProductFeature(
                  name: feature.icon,
                  value: feature.value,
                  units: feature.units,
                ),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
    );
  }
}

class ProductFeature extends StatelessWidget {
  final String name;
  final num value;
  final String units;
  const ProductFeature({
    Key? key,
    required this.name,
    required this.value,
    required this.units,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset("$name.png")),
          const SizedBox(height: 2),
          Text(
            name,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          Text(
            "$value $units",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
