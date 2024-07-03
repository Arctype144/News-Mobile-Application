import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Api/News_service.dart';
import 'package:news_app/Models/Article_card_model.dart';
import 'package:news_app/Widgets%20List/Article_card_listview.dart';

class ArticleCardBuilder extends StatefulWidget {
  const ArticleCardBuilder({super.key, required this.categorysearch});
  final String categorysearch;

  @override
  State<ArticleCardBuilder> createState() => _ArticleCardBuilderState();
}

class _ArticleCardBuilderState extends State<ArticleCardBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var future;
  List<ArticleCardModel> articles = [];

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getnews(categoryserach: widget.categorysearch);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleCardModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ArticleCardListview(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
                child: Text('Something Went Wrong.. Please Tryagian Later!')),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
