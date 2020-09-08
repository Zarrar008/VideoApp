import 'package:VideoApp/widgets/actions_toolbar.dart';
import 'package:VideoApp/widgets/bottom_toolbar.dart';
import 'package:VideoApp/widgets/video_description.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video App',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.black,
          displayColor: Colors.black,
        ),
      ),
      home: MyHomePage(title: 'Video App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          topSection,
          middleSection,
          ButtonTools(),
          TimeSeconds(),
        ],
      ),
    );
  }
}

Widget get topSection => Container(
      height: 100.0,
      padding: EdgeInsets.only(bottom: 15.0),
      color: Colors.yellow[300],
    );

Widget get middleSection => Expanded(
    child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[VideoDescription(), ActionsToolbar()]));
