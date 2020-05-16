import 'package:flutter/material.dart';

import './data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Categories'),
        ),
        body: Container(
          padding: const EdgeInsets.all(8),
          child: GridView(
            children: DUMMY_CATEGORIES.map((d) {
              return CategoriesItem(d.title, d.color);
            }).toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20),
          ),
        ));
  }
}
