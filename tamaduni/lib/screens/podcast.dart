import 'package:flutter/material.dart';
// import 'package:tamaduni/utilities/samplePodcasts.json' as sampleData;

class Podcasts extends StatelessWidget {
  const Podcasts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Podcasts'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[],
      )),
    );
  }

  Widget buildPodcastCard(
      {required AssetImage image,
      required String title,
      required String description}) {
    return Card(
      shadowColor: Colors.black12,
      margin: const EdgeInsets.all(5),
      child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            // print('Card tapped.');
          },
          child: Container(
            alignment: Alignment.center,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(image: image, fit: BoxFit.cover),
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  backgroundColor: Colors.orange),
            ),
          )),
    );
  }
}
