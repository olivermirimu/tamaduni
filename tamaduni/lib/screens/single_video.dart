import 'package:flutter/material.dart';

class SingleVideo extends StatelessWidget {
  final AssetImage categoryImage;
  final String title;
  final String channel;
  final String link;
  final String description;
  const SingleVideo(
      this.categoryImage, this.title, this.description, this.channel, this.link,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        backgroundColor: Colors.blueGrey,
        body: Column(children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              channel,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            height: 150,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: categoryImage, fit: BoxFit.contain)),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              description,
              textAlign: TextAlign.start,
              style: const TextStyle(),
            ),
          )
        ]));
  }
}
