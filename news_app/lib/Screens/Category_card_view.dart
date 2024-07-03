import 'package:flutter/material.dart';
import 'package:news_app/Models/Category_card_model.dart';
import 'package:news_app/WidgetBuilder/Article_card_builder.dart';

class CategoryCardView extends StatelessWidget {
  const CategoryCardView({super.key, required this.categorysearch});

  final String categorysearch;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              pinned: true,
              title: RichText(
                text: const TextSpan(
                  text: 'News ',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Cloud',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ArticleCardBuilder(categorysearch: categorysearch),
          ],
        ),
      ),
    );
  }
}
