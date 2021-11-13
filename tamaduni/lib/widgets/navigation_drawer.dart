import 'package:flutter/material.dart';
import 'package:tamaduni/screens/about.dart';
import 'package:tamaduni/screens/articles.dart';
import 'package:tamaduni/screens/community.dart';
import 'package:tamaduni/screens/login.dart';
import 'package:tamaduni/screens/podcast.dart';
import 'package:tamaduni/screens/profile.dart';
import 'package:tamaduni/screens/settings.dart';
import 'package:tamaduni/screens/videos.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);
  final hoverColor = Colors.amber;
  final username = "Username";
  final email = "username@x.com";

  @override
  Widget build(BuildContext context) {
    AssetImage profileImage = const AssetImage('assets/images/groot.jpg');
    return Drawer(
        child: Material(
      color: Colors.blueGrey,
      child: ListView(
        children: [
          DrawerHeader(
            // margin: EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(0),
            decoration: const BoxDecoration(
                // color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/images/landscape.jpg",
                    ))),
            child: Row(
              children: <Widget>[
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: profileImage,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  username,
                  style: const TextStyle(color: Colors.white70, fontSize: 20),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Articles'),
                  leading: const Icon(Icons.article,
                      color: Color.fromRGBO(0, 29, 61, 1)),
                  onTap: () => routingFunction(context, "articles"),
                  hoverColor: hoverColor,
                ),
                ListTile(
                  title: const Text('Podcasts'),
                  leading: const Icon(Icons.mic,
                      color: Color.fromRGBO(0, 29, 61, 1)),
                  onTap: () => routingFunction(context, "podcasts"),
                  hoverColor: hoverColor,
                ),
                ListTile(
                  title: const Text('Videos'),
                  leading: const Icon(Icons.video_camera_back,
                      color: Color.fromRGBO(0, 29, 61, 1)),
                  onTap: () => routingFunction(context, "videos"),
                  hoverColor: hoverColor,
                ),
                ListTile(
                  title: const Text('Commmunity'),
                  leading: const Icon(Icons.people,
                      color: Color.fromRGBO(0, 29, 61, 1)),
                  onTap: () => routingFunction(context, "community"),
                  hoverColor: hoverColor,
                ),
                ListTile(
                  title: const Text('About'),
                  leading: const Icon(Icons.info,
                      color: Color.fromRGBO(0, 29, 61, 1)),
                  onTap: () => routingFunction(context, "about"),
                  hoverColor: hoverColor,
                ),
                const Divider(
                  color: Color.fromRGBO(0, 29, 61, 1),
                  height: 2,
                ),
                ListTile(
                  title: const Text('Profile'),
                  leading: const Icon(Icons.account_circle,
                      color: Color.fromRGBO(0, 29, 61, 1)),
                  onTap: () => routingFunction(context, "profile"),
                  hoverColor: hoverColor,
                ),
                ListTile(
                  title: const Text('Logout'),
                  leading: const Icon(Icons.logout,
                      color: Color.fromRGBO(0, 29, 61, 1)),
                  onTap: () => routingFunction(context, "logout"),
                  hoverColor: hoverColor,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }

// navigate using navigation drawer
  void routingFunction(BuildContext context, String _page) {
    // collapse navigation drawer
    Navigator.of(context).pop();

    switch (_page) {
      case "articles":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Articles()));
        break;
      case "podcasts":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Podcasts()));
        break;
      case "videos":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Videos()));
        break;
      case "community":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Community()));
        break;
      case "about":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const About()));
        break;
      case "settings":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Settings()));
        break;
      case "logout":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Login()));
        break;
      case "profile":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Profile()));
        break;
      default:
    }
  }
}
