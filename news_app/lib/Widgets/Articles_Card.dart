import 'package:flutter/material.dart';
import 'package:news_app/Models/Article_card_model.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key, required this.articlemodel});
  final ArticleCardModel articlemodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: NetworkImage(articlemodel.image ??
              'https://salonlfc.com/wp-content/uploads/2018/01/image-not-found-1-scaled-1150x647.png'),
        ),
        Text(
          articlemodel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          articlemodel.description ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
