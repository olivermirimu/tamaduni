import 'package:flutter/material.dart';

class SinglePodcast extends StatelessWidget {
  final AssetImage podcastImage;
  final String title;
  final String description;
  final String link;
  const SinglePodcast(
      this.podcastImage, this.title, this.description, this.link,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Podcast Description"),
        ),
        backgroundColor: Colors.blueGrey,
        body: Column(children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            height: 150,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: podcastImage, fit: BoxFit.contain)),
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
