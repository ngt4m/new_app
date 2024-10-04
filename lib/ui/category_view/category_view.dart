import 'package:flutter/material.dart';
import 'package:new_app/ui/category_view/list_category_view.dart';

class CategoryView extends StatelessWidget {
  final nameCategory;
  final imageCategory;
  const CategoryView({
    required this.nameCategory,
    required this.imageCategory,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ListCategoryView(name: nameCategory),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 8, left: 8),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                imageCategory,
                width: 120,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black38),
              child: Center(
                child: Text(
                  nameCategory,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
