import 'package:flutter/material.dart';

class Videos extends StatelessWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
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