import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
  var items = ['Apple','Banana','Grapes', 'Orange','watermelon'];

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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Circle Avatar:',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://pbs.twimg.com/profile_images/1263605080718221312/CtV_UA01_400x400.jpg"),
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


          ],
        ),
      ),

      //   ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
