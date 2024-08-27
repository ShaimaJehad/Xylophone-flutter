import 'package:flutter/material.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({super.key, required this.color, required this.onPressed});
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onPressed();
        },
        child: Container(
          width: double.infinity,
          height: 300,
          color: color,
        ),
      ),
    );
  }
}
