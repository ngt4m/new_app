import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:new_app/models/category_model/show_category_model.dart';

class ShowCategoryData {
  List<ShowCategoryModel> categories = [];

  Future<void> GetShowCategoryData(String category) async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=fe36640741214cfca9d3ddb0cde9f9c0';

    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ShowCategoryModel categoryModel = ShowCategoryModel(
        title: element['title'],
            description: element['description'],
            content: element['content'],
            image: element['urlToImage'],
            publish: element['publishedAt'],
            link: element['url'],
          );
          categories.add(categoryModel);
        }
      });
    }
  }
}
