import 'package:flutter/material.dart';
import 'package:news_app/Models/Category_card_model.dart';
import 'package:news_app/Widgets/Category_card.dart';

class CategoryCardListview extends StatelessWidget {
  const CategoryCardListview({super.key});

  final List<CategoryCardModel> categories = const [
    CategoryCardModel(cardname: 'Business', cardimage: 'assets/business.png'),
    CategoryCardModel(
        cardname: 'Entertainment', cardimage: 'assets/entertaiment.png'),
    CategoryCardModel(cardname: 'General', cardimage: 'assets/general.png'),
    CategoryCardModel(cardname: 'Health', cardimage: 'assets/health.png'),
    CategoryCardModel(cardname: 'Science', cardimage: 'assets/science.png'),
    CategoryCardModel(cardname: 'Sports', cardimage: 'assets/sports.png'),
    CategoryCardModel(
        cardname: 'Technology', cardimage: 'assets/technology.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              categorymodel: categories[index],
            );
          }),
    );
  }
}
