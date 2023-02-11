import 'package:flutter/material.dart';
import 'package:flutter_application_1/full_image.dart';

class ImageScreen extends StatelessWidget {
  ImageScreen({Key? key}) : super(key: key);

  List<String> images = [
    "assets/d1.jpg",
    "assets/d2.jpg",
    "assets/d3.jpg",
    "assets/d4.jpg",
    "assets/d5.jpg",
    "assets/d6.jpg",
    "assets/d7.jpg",
    "assets/d8.jpg",
    "assets/g1.jpeg",
    "assets/g2.jpeg",
    "assets/g3.jpeg",
    "assets/g4.jpeg",
    "assets/g5.jpeg",
    "assets/g6.jpeg",
    "assets/g7.jpeg",
    "assets/g8.jpeg",
    "assets/g9.jpeg",
    "assets/g10.jpeg",
    "assets/g11.jpeg",
    "assets/g12.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
          itemBuilder: (BuildContext context, int index) {
            // return Image.network(images[index]);
            return InkWell(
              onDoubleTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) =>
                        FullImage(index: index, url: images[index]),
                  )),
              child: Container(
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ));
  }
}
