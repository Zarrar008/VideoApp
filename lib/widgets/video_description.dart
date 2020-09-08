import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70.0,
        padding: EdgeInsets.only(left: 20.0),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '@firstVideo',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),
              ),
              Text('First Video on the App', style: TextStyle(color: Colors.white,)),
              Row(children: [
                Icon(Icons.music_note, size: 15.0, color: Colors.white,),
                Text('Aibak - Why - Answer', style: TextStyle(fontSize: 12.0, color: Colors.white,))
              ]),
            ]),
      ),
    );
  }
}
