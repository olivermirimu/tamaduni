import 'package:flutter/material.dart';
import 'package:tamaduni/screens/video_category.dart';
import 'package:tamaduni/widgets/navigation_drawer.dart';

class Videos extends StatelessWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage historyImage = const AssetImage("assets/images/history.jpg");
    AssetImage cultureImage = const AssetImage("assets/images/culture.jpg");

    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Videos'),
        ),
        drawer: const NavigationDrawer(),
        body: Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: GridView.count(
              crossAxisCount: 1,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 1.3,
              // (itemWidth / itemHeight),
              children: <Widget>[
                buildVideoCategory(
                    context: context,
                    image: historyImage,
                    title: "Youtube",
                    description: "Some inciteful youtube channels."),
                buildVideoCategory(
                    context: context,
                    image: cultureImage,
                    title: "Originals",
                    description:
                        "Videos we have curated to celebrate our African heritage."),
                buildVideoCategory(
                    context: context,
                    image: cultureImage,
                    title: "Others",
                    description:
                        "We believe you should check these out, you'll love them.")
              ],
            ))
        // ),
        // ])
        );
  }

  Widget buildVideoCategory(
      {required context,
      required AssetImage image,
      required String title,
      required String description}) {
    return Card(
      shadowColor: Colors.black12,
      child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => VideoCategory(
                        const AssetImage("assets/images/history.jpg"),
                        title,
                        description)));
          },
          child: Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: image, fit: BoxFit.cover),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(description)
              ]))),
    );
  }
}
