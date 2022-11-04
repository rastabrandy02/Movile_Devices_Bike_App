import 'package:flutter/material.dart';
import 'package:bike_app/model/product.dart';
import 'package:bike_app/screen/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bike App',
      home: ProductScreen(
        product: Product(
          brand: "Honda",
          model: "CB750 Hornet",
          description:
              "Forget the expected.\nIt's time for a new generation to shake things up. \nIt starts with a new engine that produces incredible, class-leading power. \nIncludes a chassis lightweight sporty, tightly wrapped in eye-catching streetfighter styling,\nand the new CB750 Hornet takes off. \nThere is nothing like it",
          price: 7650,
          favorite: false,
          imageAsset: "honda_cb750_hornet.png",
          variants: [
            ProductVariant("White", Colors.white, false),
            ProductVariant("Grey", Colors.grey, false),
            ProductVariant("Black", Colors.black, true),
            ProductVariant("Yellow", Colors.yellow, false),
          ],
          features: [
            //ProductFeature("heart", 10, "cc"),
            ProductFeature("Engine", 755, "cc"),
            ProductFeature("Weight", 190, "kg"),
            ProductFeature("MaxSpeed", 205, "km/h"),
            ProductFeature("Consumption", 4.35, "l/100km"),
          ],
        ),
      ),
    );
  }
}
