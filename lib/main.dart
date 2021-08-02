import 'package:courseflutter04/heroTesting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:courseflutter04/navigateToPage.dart';

// import 'package:flutter/scheduler.dart';
import 'package:url_strategy/url_strategy.dart';
// import 'package:velocity_x/velocity_x.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    //
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = 'One';

  String secondDropDownValue = 'Apple';
  var items = ['Apple', 'Banana', 'Grapes', 'Orange', 'watermelon'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            /// Title
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Circle Avatar:',
                style: TextStyle(fontSize: 30.0),
              ),
            ),

            ///CircleAvatar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/allimages/imgtesting.jpg"),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'M. Umer Yasin',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 10,
              thickness: 5,
              indent: 20,
              endIndent: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: CircleAvatar(
                      backgroundColor: Colors.brown.shade800,
                      child: const Text('AH'),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Umer Yasin',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ],
              ),
            ),

            /// Drop Down Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Drop down Button:',
                style: TextStyle(fontSize: 30.0),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButton(
                      value: secondDropDownValue,
                      items: items.map((itemsname) {
                        return DropdownMenuItem(
                          value: itemsname,
                          child: Text(itemsname),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          secondDropDownValue = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            Divider(),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 24,
                      style: const TextStyle(
                          color: Colors.deepPurple, fontSize: 20.0),
                      underline: Container(
                        height: 3,
                        color: Colors.grey[300],
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['One', 'Two', 'Free', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      " You Selected : ",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Expanded(
                    child: CircleAvatar(
                      backgroundColor: Colors.purple.shade800,
                      child: Text(dropdownValue),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      " : " + dropdownValue,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),

            /// Navigator // Url // link // jump one page to an others.

            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Navigator in Flutter",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NavigateToNextPage()),
                        );
                      },
                      child: Text('More Details')),
                ],
              ),
              // child: Text(
              //   'Drop down Button:',
              //   style: TextStyle(fontSize: 30.0),
              // ),
            ),

            /// Hero

            Divider(),

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

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: 'testinghero',
                    child: SizedBox(
                      height: 100.0,
                      width: 100.0,
                      child: Material(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HeroTesting(),
                              ),
                            );
                          },
                          child: Image.asset('assets/allimages/imgtesting.jpg'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Divider(),

            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Row(
            //     children: [
            //       ElevatedButton(onPressed: (){
            //         Navigator.push(context, MaterialPageRoute(builder: (context) => NavigateToNextPage()),);
            //       }, child: Text('More Details')),
            //     ],
            //   ),
            //   // child: Text(
            //   //   'Drop down Button:',
            //   //   style: TextStyle(fontSize: 30.0),
            //   // ),
            // ),
          ],
        ),
      ),

      //   ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
