import 'package:flutter/material.dart';
import 'package:tamaduni/screens/single_video.dart';
import 'package:tamaduni/utilities/samples.dart';

class VideoCategory extends StatelessWidget {
  final AssetImage categoryImage;
  final String title;
  final String description;
  const VideoCategory(this.categoryImage, this.title, this.description,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        backgroundColor: Colors.blueGrey,
        body: Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: buildCategoryBody(context: context, title: title)));
  }

  Widget buildCategoryBody({required context, required String title}) {
    switch (title) {
      case "Youtube":
        return Column(children: [
          Expanded(
            child: Column(
                children: SampleList()
                    .videoSamples
                    .map((_video) => buildChannelTile(
                        context: context,
                        channel: _video["channel"]!,
                        excerpt: _video["excerpt"]!,
                        link: _video["link"]!,
                        description: _video["description"]!,
                        image: AssetImage(_video["image"]!)))
                    .toList()),
          )
        ]);
      case "Originals":
        return Column(children: [
          Expanded(
            child: Column(
                children: SampleList()
                    .videoSamples
                    .map((_video) => buildChannelTile(
                        context: context,
                        channel: _video["channel"]!,
                        excerpt: _video["excerpt"]!,
                        link: _video["link"]!,
                        description: _video["description"]!,
                        image: AssetImage(_video["image"]!)))
                    .toList()),
          )
        ]);
      default:
        return Column(children: [
          Expanded(
            child: Column(
                children: SampleList()
                    .videoSamples
                    .map((_video) => buildChannelTile(
                        context: context,
                        channel: _video["channel"]!,
                        excerpt: _video["excerpt"]!,
                        link: _video["link"]!,
                        description: _video["description"]!,
                        image: AssetImage(_video["image"]!)))
                    .toList()),
          )
        ]);
    }
  }

  Widget buildChannelTile(
      {required context,
      required AssetImage image,
      required String channel,
      required String excerpt,
      required String description,
      required String link}) {
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
                    builder: (context) => SingleVideo(
                        const AssetImage("assets/images/history.jpg"),
                        title,
                        description,
                        channel,
                        link)));
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
                    channel,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
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
