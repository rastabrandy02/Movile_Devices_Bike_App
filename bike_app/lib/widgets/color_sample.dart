import 'package:flutter/material.dart';

class ColorSample extends StatelessWidget {
  final Color color;
  final String name;
  final bool selected;
  const ColorSample({
    Key? key,
    required this.color,
    required this.name,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = selected ? 25 : 20;
    final double space = selected ? 15 : 20;
    return Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: Border.all(
              color: Colors.white,
              width: 3,
              style: selected ? BorderStyle.solid : BorderStyle.none,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          ),
        ),
        SizedBox(height: space),
        Text(
          name,
          style: const TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
