import 'package:dio/dio.dart';
import 'package:news_app/Models/Article_card_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleCardModel>> getnews(
      {required String categoryserach}) async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=de4dfab132b34d89af8ea964fa445760&category=$categoryserach');

    Map<String, dynamic> JsonData = response.data;
    List<dynamic> articles = JsonData['articles'];
    List<ArticleCardModel> articlelist = [];

    for (var article in articles) {
      ArticleCardModel articleModel = ArticleCardModel(
          title: article['title'],
          description: article['description'],
          image: article['urlToImage']);
      articlelist.add(articleModel);
    }

    return articlelist;
  }
}



    //  ArticleModel articleModel = ArticleModel(
    //         title: article['title'],
    //         description: article['description'],
    //         image: article['urlToImage']);
    //     articlelist.add(articleModel);
