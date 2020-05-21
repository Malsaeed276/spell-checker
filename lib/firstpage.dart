import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyspellChecker();
  }
}

class MyspellChecker extends State<firstpage> {
  final TextEditingController _controller = new TextEditingController();

  //final myController = TextEditingController();
  String result = "";
  double resultSize;

  void haveTheAnswer(String input) {
    setState(() {
      if (input == " " || input == null || input == "") {
        result = " you did not enter any word";
      } else {
        result = input;
      }

      resultSize = result.length.toDouble();
    });
    /* //for clear the input from the word
    _controller.text = "";*/
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            /*decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  color: Colors.blue,
                ),*/
            //padding: EdgeInsets.all(8.0),
            width: 600.0,
            margin: const EdgeInsets.fromLTRB(20, 2, 20, 10),
            child: TextField(
              style: textStyle,
              decoration: InputDecoration(
                labelText: ('let\'s spell'),
                labelStyle: textStyle,
                hintText: ('enter your word'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onSubmitted: haveTheAnswer,
              controller: _controller,
            ),
          ),

          // result of the word
          Container(
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(5.5)),

            //it should be with the length of the word
            margin: const EdgeInsets.fromLTRB(50, 2, 50, 2),
            padding: EdgeInsets.all(5),
            child: Center(
              child: Text(result),
            ),
          ),


          Container(
              child: Row(
                //scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Center(
                      child: Text('something', style: textStyle),
                    ),
                    width: 100,
                    height: 50,
                    color: Colors.orange,
                    margin: const EdgeInsets.fromLTRB(10, 15, 10, 20),
                  ),
                ],
              ),
            ),

        ],
      ),
    ));
  }
}
