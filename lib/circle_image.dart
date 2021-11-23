import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({Key? key, this.imageProvider, this.imagesRadius = 20})
      : super(key: key);

  final double imagesRadius;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imagesRadius,
      child: CircleAvatar(
        radius: imagesRadius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
