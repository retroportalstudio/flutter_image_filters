import 'dart:typed_data';

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final Uint8List imageData;

  const SecondScreen({Key key, this.imageData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxHeight: size.width, maxWidth: size.width),
          child: Image.memory(
            imageData,
            width: size.width,
            height: size.height,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
