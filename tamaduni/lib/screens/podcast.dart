import 'package:flutter/material.dart';

class Podcasts extends StatelessWidget {
  const Podcasts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Podcasts'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
      
          },
        ),
      ),
    );
  }
}