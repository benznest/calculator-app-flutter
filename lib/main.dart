import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyCalculatorPage(title: 'Calculator'),
    );
  }
}

class MyCalculatorPage extends StatefulWidget {
  MyCalculatorPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyCalculatorPageState createState() => _MyCalculatorPageState();
}

class _MyCalculatorPageState extends State<MyCalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[buildAnswerWidget(),
        buildNumPadWidget()],
      )),
    );
  }

  Widget buildAnswerWidget() {
    return Container(
        padding: EdgeInsets.all(16),
        constraints: BoxConstraints.expand(height: 180),
        color: Color(0xffecf0f1),
        child: Align(
            alignment: Alignment.bottomRight,
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Text("12 +", style: TextStyle(fontSize: 18)),
              Text("8",
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold))
            ])));
  }

  Widget buildNumPadWidget() {
    return Container(
        color: Color(0xffecf0f1),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(children: <Widget>[
              buildNumberButton("7"),
              buildNumberButton("8"),
              buildNumberButton("9"),
            ]),
            Row(children: <Widget>[
              buildNumberButton("4"),
              buildNumberButton("5"),
              buildNumberButton("6"),
            ]),
            Row(children: <Widget>[
              buildNumberButton("1"),
              buildNumberButton("2"),
              buildNumberButton("3"),
            ]),
          ],
        ));
  }

  Expanded buildNumberButton(String str) {
    return Expanded(
        child: Container(
            color: Colors.white,
            height: 100,
            child: Center(
                child: Text(str,
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold)))));
  }
}
