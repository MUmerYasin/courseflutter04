import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:url_strategy/url_strategy.dart';
// import 'package:velocity_x/velocity_x.dart';

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
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "You Not Need to Know any Thing, Please go back!",
                    style: TextStyle(fontSize: 20.0),
                  )),
                ],
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Hero(
            //           tag: 'testinghero',
            //           child: SizedBox(
            //             // height: 100.0,
            //             // width: 100.0,
            //             child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(15.0),
            //                 child: Image.asset(
            //               'assets/allimages/imgtesting.jpg',
            //               fit: BoxFit.contain,
            //             )),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            /// Navigator // Url // link // jump one page to an others.
            /// Second button to go back, where they come from // go first page
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate back to first route when tapped.
                  Navigator.pop(context);
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
