import 'package:flutter/material.dart';

class MovieContentBoxWidget extends StatelessWidget {
  final Widget title;
  final String value;
  const MovieContentBoxWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.white.withOpacity(0.15),
        ),
      ),
      child: Column(
        children: [
          title,
          Text(value),
        ],
      ),
    );
  }
}
