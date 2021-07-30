import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigateToNextPage extends StatefulWidget {
  const NavigateToNextPage({Key? key}) : super(key: key);

  @override
  _NavigateToNextPageState createState() => _NavigateToNextPageState();
}

class _NavigateToNextPageState extends State<NavigateToNextPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Second Page"),
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate back to first route when tapped.
                },
                child: Text('Go back!'),
              ),
            ),
          ],
        ),
      ),
    );


  }
}
