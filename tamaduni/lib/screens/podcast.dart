import 'package:flutter/material.dart';
import 'package:tamaduni/utilities/samples.dart';
import 'package:tamaduni/widgets/navigation_drawer.dart';
// import 'package:tamaduni/utilities/samplePodcasts.json' as sampleData;

class Podcasts extends StatelessWidget {
  const Podcasts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Podcasts'),
        ),
        drawer: const NavigationDrawer(),
        body: Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView(
                children: SampleList()
                    .samplePodcasts
                    .map((_podcast) => buildPodcastCard(
                        context: context,
                        image: AssetImage(_podcast["image"]!),
                        title: _podcast["title"]!,
                        description: _podcast["description"]!))
                    .toList())));
  }

  Widget buildPodcastCard(
      {required context,
      required AssetImage image,
      required String title,
      required String description}) {
    var size = MediaQuery.of(context).size;
    double width = size.width;

    return Container(
      // shadowColor: Colors.black12,
      margin: const EdgeInsets.all(5),
      child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            // print('Card tapped.');
          },
          child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
            Container(
              // alignment: Alignment.topLeft,
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
                    color: Colors.orange,
                    fontSize: 18,
                  ),
                ),
                Text(
                  description,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: Colors.deepOrangeAccent, fontSize: 12),
                )
              ],
            )
          ])),
    );
  }
}
