// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:tamaduni/screens/single_article.dart';
import 'package:tamaduni/utilities/samples.dart';

class ArticleCategory extends StatelessWidget {
  final AssetImage categoryImage;
  final String title;
  final String description;
  const ArticleCategory(this.categoryImage, this.title, this.description,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        backgroundColor: Colors.blueGrey,
        body: Column(
          children: [
            Column(children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: categoryImage, fit: BoxFit.cover)),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  width: 1,
                ))),
                child: Text(description),
              )
            ]),
            Expanded(
              child: Column(
                  children: SampleList()
                      .articleSamples
                      .map((_article) => buildArticleTile(
                          context: context,
                          title: _article["title"]!,
                          excerpt: _article["excerpt"]!,
                          image: AssetImage(_article["image"]!)))
                      .toList()),
            )
          ],
        ));
  }

  Widget buildArticleTile(
      {required context,
      required AssetImage image,
      required String title,
      required String excerpt}) {
    return Container(
        margin: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white10),
            borderRadius: BorderRadius.circular(10)),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SingleArticle(
                        const AssetImage("assets/images/history.jpg"),
                        title,
                        excerpt)));
          },
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 90,
                width: 90,
                margin: const EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                    image: DecorationImage(image: image, fit: BoxFit.cover),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              Column(
                children: <Widget>[
                  Text(
                    title,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    excerpt,
                    textAlign: TextAlign.left,
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
