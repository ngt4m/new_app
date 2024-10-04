import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:new_app/models/article_model.dart';

class NewsData {
  List<ArticleModel> news = [];

  Future<void> GetNewsData() async {
    String url =
        'https://newsapi.org/v2/everything?q=apple&from=2024-08-14&to=2024-07-13&sortBy=popularity&apiKey=fe36640741214cfca9d3ddb0cde9f9c0';

    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
          title: element['title'],
            description: element['description'],
            content: element['content'],
            image: element['urlToImage'],
            publish: element['publishedAt'],
            link: element['url'],
          );
          news.add(articleModel);
        };
      });
    }
  }
}
