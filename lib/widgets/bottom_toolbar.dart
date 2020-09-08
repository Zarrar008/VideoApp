import 'package:flutter/material.dart';

class ButtonTools extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      color: Colors.black,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _getSideButtons(icon: Icons.upload_rounded),
        _getMainButtons(icon: Icons.videocam),
        _getSideButtons(icon: Icons.check_circle),
      ]),
    );
  }
}

class TimeSeconds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.black,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _getSeconds(title: '15s'),
        _getSeconds(title: '30s'),
        _getSeconds(title: '60s'),
        _getSeconds(title: '90s'),
      ]),
    );
  }
}

Widget _getMainButtons({IconData icon}) {
  return Container(
      margin: EdgeInsets.only(top: 8.0),
      width: 60,
      height: 60,
      child: Column(children: [
        Icon(icon, size: 55.0, color: Colors.red),
      ]));
}

Widget _getSideButtons({IconData icon}) {
  return Container(
      margin: EdgeInsets.only(top: 8.0),
      width: 30,
      height: 30,
      child: Column(children: [
        Icon(icon, size: 25.0, color: Colors.white),
      ]));
}

Widget _getSeconds({String title}) {
  return Container(
      margin: EdgeInsets.only(top: 17.0),
      width: 20,
      height: 25,
      child: Column(children: [
        Text(title, style: TextStyle(fontSize: 10.0, color: Colors.white)),
      ]));
}
