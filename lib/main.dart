import 'package:flutter/material.dart';
import 'package:spellchecker/firstpage.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = Theme.of(context).textTheme.title;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo,
        accentColor: Colors.indigoAccent,

      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Spell checker',

            ),
          ),
        ),
        body: firstpage(),
      ),
    );
  }
}
