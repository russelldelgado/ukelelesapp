import 'package:flutter/material.dart';
import 'package:shoesapp/src/helpers/helpers.dart';

class Volver extends StatelessWidget {
  const Volver({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 20,
        left: 20,
        child: FloatingActionButton(
          child: Icon(Icons.chevron_left, color: Colors.white, size: 60),
          onPressed: () {
            cambiarStatusLight();
            Navigator.pop(context);
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          highlightElevation: 0,
        ));
  }
}
