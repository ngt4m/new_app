class ShowCategoryModel {
  String? title;
  String? description;
  String? content;
  String? image;
  String? publish;
  String? link;

  ShowCategoryModel({
    required this.title,
    required this.description,
    required this.content,
    required this.image,
    required this.publish,
    required this.link,
  });

  // factory ShowCategoryModel.fromJson(Map<String, dynamic> json) {
  //   return ShowCategoryModel(
  //     title: json['title'],
  //     description: json['description'],
  //     content: json['content'],
  //     image: json['image_url'],
  //     publish: json['pubDate'],
  //     link: json['link'],
  //   );
  // }
}
