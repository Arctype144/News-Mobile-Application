import 'package:flutter/material.dart';
import 'package:news_app/Models/Article_card_model.dart';
import 'package:news_app/Widgets/Articles_Card.dart';

class ArticleCardListview extends StatelessWidget {
  const ArticleCardListview({super.key, required this.articles});

  final List<ArticleCardModel> articles;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ArticleCard(
              articlemodel: articles[index],
            );
          },
          childCount: articles.length,
        ),
      ),
    );
  }
}
