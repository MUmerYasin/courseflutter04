import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:url_strategy/url_strategy.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'package:lorem_ipsum/lorem_ipsum.dart';

class HeroTesting extends StatefulWidget {
  const HeroTesting({Key? key}) : super(key: key);

  @override
  _HeroTestingState createState() => _HeroTestingState();
}

class _HeroTestingState extends State<HeroTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Testing Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hero Tesing",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),

            /// Hero using
            /// second page where hero come from first page
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Hero(
                      tag: 'testinghero',
                      child: SizedBox(
                        // height: 100.0,
                        // width: 100.0,
                        child: Material(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset(
                                  'assets/allimages/imgtesting.jpg',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      "Lorem ipsum, aurum haec dimitto. Consurgo cibo duo crux damno caput eximietate passim pello. He malus longe. Civis detineo sic.",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ],
              ),
            ),

            /// Navigator // Url // link // jump one page to an others.
            /// Second button to go back, where they come from // go first page
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: ElevatedButton(
            //     onPressed: () {
            //       // Navigate back to first route when tapped.
            //       Navigator.pop(context);
            //     },
            //     child: Text('Go back!'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
