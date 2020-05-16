import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  final String title;
  final Color color;

  CategoriesItem(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      child: Text(
        title,
        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
