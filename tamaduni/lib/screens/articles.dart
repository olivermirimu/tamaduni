import 'package:flutter/material.dart';
import 'package:tamaduni/screens/Article_Category.dart';
import 'package:tamaduni/widgets/navigation_drawer.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage historyImage = const AssetImage("assets/images/history.jpg");
    AssetImage cultureImage = const AssetImage("assets/images/culture.jpg");

    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Articles'),
        ),
        drawer: const NavigationDrawer(),
        body:
            // Column(
            //     //   crossAxisAlignment: CrossAxisAlignment.stretch,
            //     children: [
            //       Flexible(
            //           child:
            GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: .7,
          // (itemWidth / itemHeight),
          children: <Widget>[
            buildArticleCard(
                context: context,
                image: historyImage,
                title: "History",
                description: "A dive into the past."),
            buildArticleCard(
                context: context,
                image: cultureImage,
                title: "Culture",
                description: "Explore our diverse pride."),
            buildArticleCard(
                context: context,
                image: cultureImage,
                title: "WildCard",
                description: "Explore random fun tidbits")
          ],
        )
        // ),
        // ])
        );
  }

  Widget buildArticleCard(
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
                    builder: (context) => ArticleCategory(
                        const AssetImage("assets/images/history.jpg"), title, description)));
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
