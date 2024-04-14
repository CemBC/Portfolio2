import 'package:flutter/material.dart';

void main() {
  runApp(ImageCarousel());
}

class ImageCarousel extends StatefulWidget{
  const ImageCarousel({super.key});

  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _index = 0;

  List<String> _images = [
    "assets/images/cat1.jpeg",
    "assets/images/cat2.jpeg",
    "assets/images/cat3.jpeg",
    "assets/images/cat4.jpeg",
    "assets/images/cat5.jpeg",
    "assets/images/cat6.jpeg"
  ];
}

