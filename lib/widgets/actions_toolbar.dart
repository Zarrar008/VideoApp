import 'package:flutter/material.dart';

class ActionsToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      color: Colors.black,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _getSocialAction(icon: Icons.cached, title: 'Flip'),
        _getSocialAction(icon: Icons.filter_vintage, title: 'Filters'),
        _getSocialAction(icon: Icons.timer, title: 'Timer'),
        _getSocialAction(icon: Icons.restore, title: 'Speed'),
        _getSocialAction(icon: Icons.volume_up, title: 'Volume'),
        _getSocialAction(icon: Icons.flash_on, title: 'Flash'),
      ]),
    );
  }
}

Widget _getSocialAction({String title, IconData icon}) {
  return Container(
      margin: EdgeInsets.only(top: 15.0),
      width: 50.0,
      height: 50.0,
      child: Column(children: [
        Icon(icon, size: 30.0, color: Colors.grey[300]),
        Padding(
          padding: EdgeInsets.only(top: 2.0),
          child: Text(title, style: TextStyle(fontSize: 12.0, color: Colors.white)),
        )
      ]));
}
