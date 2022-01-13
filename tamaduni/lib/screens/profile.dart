import 'package:flutter/material.dart';
import 'package:tamaduni/widgets/navigation_drawer.dart';
import 'package:tamaduni/screens/edit_profile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage profileImage = const AssetImage('assets/images/groot.jpg');
    const username = "olivermirimu";
    const email = "olivermirimu@gmail.com";
    const mobile = "+254714744393";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      drawer: const NavigationDrawer(),
      body: Column(
        children: <Widget>[
          Center(
              child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 70,
                backgroundImage: profileImage,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                username,
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                child: const Text('Edit Profile'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const EditProfile()));
                },
              )
            ],
          )),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
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
                const SizedBox(
                  height: 10,
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
              ]))
        ],
      ),
    );
  }
}
