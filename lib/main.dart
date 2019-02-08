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
      body: Column(
        children: <Widget>[
          buildAnswerWidget(),
        ],
      ),
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
}
