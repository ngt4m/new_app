class ArticleModel {
  String? title;
  String? description;
  String? content;

  String? image;
  String? publish;
  String? link;

  ArticleModel({
    required this.title,
    required this.description,
    required this.content,
    required this.image,
    required this.publish,
    required this.link,
  });

  // factory ArticleModel.fromJson(Map<String, dynamic> json) {
  //   return ArticleModel(
  //     title: json['title'],
  //     description: json['description'],
  //     content: json['content'],
  //     image: json['image_url'],
  //     publish: json['pubDate'],
  //     link: json['link'],
  //   );
  // }
}
