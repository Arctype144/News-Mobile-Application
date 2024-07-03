// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news_app/WidgetBuilder/Article_card_builder.dart';
import 'package:news_app/Widgets%20List/Article_card_listview.dart';
import 'package:news_app/Widgets%20List/Category_card_listview.dart';
import 'package:news_app/Widgets/Articles_Card.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoryCardListview(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            ArticleCardBuilder(
              categorysearch: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
