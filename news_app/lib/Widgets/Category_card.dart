import 'package:flutter/material.dart';
import 'package:news_app/Models/Category_card_model.dart';
import 'package:news_app/Screens/Category_card_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categorymodel});

  final CategoryCardModel categorymodel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryCardView(
                categorysearch: categorymodel.cardname,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          height: 110,
          width: 170,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(categorymodel.cardimage),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Center(
            child: Text(
              categorymodel.cardname,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
