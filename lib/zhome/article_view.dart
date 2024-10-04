import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleView extends StatefulWidget {
  final String linkArticle;
  ArticleView({required this.linkArticle, Key? key}) : super(key: key);

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  Future<void> _launchURL() async {
    final Uri uri = Uri.parse(widget.linkArticle);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch ';
    }
  }

  @override
  void initState() {
    super.initState();
    _launchURL();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
