import 'package:flutter/material.dart';
import 'package:tamaduni/widgets/navigation_drawer.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const description =
        "Tamaduni is an initiative to create a one stop library of sources of African stories. From Culture to History and Heritage as a whole.";
    const email = "olivermirimu@gmail.com";
    const mobile = "+254714744393";

    return Scaffold(
        appBar: AppBar(
          title: const Text('About'),
        ),
        drawer: const NavigationDrawer(),
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    "What we're about",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const Text(
                  description,
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    "Contact Us",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Row(
                  children: const <Widget>[
                    Icon(
                      Icons.email_rounded,
                      // color: Colors.orangeAccent,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          email,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ))
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Icon(
                      Icons.phone_android_rounded,
                      // color: Colors.orangeAccent,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(mobile))
                  ],
                )
              ]),
        ));
  }
}
