import 'package:flutter/material.dart';
import 'package:tamaduni/widgets/navigation_drawer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: const Color.fromRGBO(232, 98, 5, 1),
      primarySwatch: Colors.deepOrange,

      // TOTDO: update color scheme
      colorScheme: ColorScheme.fromSwatch(
          accentColor: Colors.orange[300], primarySwatch: Colors.deepOrange),
    ),
    title: 'Tamaduni',
    home: const App(),
  ));
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tamaduni'),
        backgroundColor: const Color.fromRGBO(232, 98, 5, 1),
      ),
      drawer: const SafeArea(child: NavigationDrawer()),
    );
  }
}
