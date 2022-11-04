import 'package:flutter/material.dart';
import 'package:bike_app/model/product.dart';
import 'package:bike_app/widgets/color_sample.dart';
import 'package:provider/provider.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
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
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.brand,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    product.model,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    product.description,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 100),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(Icons.star_border_outlined),
              SizedBox(width: 5),
              Text(
                "4.8",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Reviews",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "(238)",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (final variant in product.variants) ...[
                if (variant != product.variants.first)
                  const SizedBox(width: 16),

                // if(variant.name == "Black")
                // ColorSample(name: variant.name, color: variant.color, selected: true,),
                // if(variant.name != "Black")
                ColorSample(
                  name: variant.name,
                  color: variant.color,
                  selected: variant.selected,
                ),
              ]
            ],
          ),
        ],
      ),
    );
  }
}
