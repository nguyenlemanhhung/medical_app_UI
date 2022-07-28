import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryCard extends StatelessWidget {
  final iconImagePath;
  final String categoryName;

  CategoryCard({required this.iconImagePath, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          children: [
            Image.asset(iconImagePath),
            SizedBox(
              width: 15,
            ),
            Text(categoryName)
          ],
        ),
      ),
    );
  }
}
