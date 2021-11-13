import 'package:flutter/material.dart';
import 'package:tamaduni/widgets/navigation_drawer.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage historyImage = const AssetImage("assets/images/history.jpg");
    AssetImage cultureImage = const AssetImage("assets/images/culture.jpg");

    return Scaffold(
      appBar: AppBar(
        title: const Text('Articles'),
      ),
      drawer: const NavigationDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildArticleCard(
              image: historyImage, title: "History", description: ""),
          buildArticleCard(
              image: cultureImage, title: "Culture", description: "")
        ],
      ),
    );
  }

  Widget buildArticleCard(
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
