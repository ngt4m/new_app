import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:new_app/models/slider_model.dart';

class SliderData {
  List<SliderModel> sliders = [];

  Future<void> GetSliderData() async {
    String url = 'https://newsapi.org/v2/everything?q=tesla&from=2024-08-14&sortBy=publishedAt&apiKey=fe36640741214cfca9d3ddb0cde9f9c0';

    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          SliderModel sliderModel = SliderModel(
            title: element['title'],
            description: element['description'],
            content: element['content'],
            image: element['urlToImage'],
            publish: element['publishedAt'],
            link: element['url'],
          );
          sliders.add(sliderModel);
        }
      });
    }
  }
}
