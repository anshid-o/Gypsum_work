import 'package:flutter/material.dart';

class FullImage extends StatelessWidget {
  int index;
  String url;
  FullImage({Key? key, required this.index, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image : ${index + 1}'),
      ),
      body: Container(
        width: double.infinity,
        child: Image(
          image: AssetImage(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
