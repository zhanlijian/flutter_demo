import 'package:flutter/material.dart';

class AlarmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Image.network(
        "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg",
        alignment: Alignment.center,
        // color: Colors.red,
        colorBlendMode: BlendMode
            .colorDodge, // repeat: ImageRepeat.repeatX, fit: BoxFit.cover, ),
        height: 400.0,
        width: 300.0,
        // decoration: BoxDecoration(color: Colors.yellow),
      )),
    );
  }
}
