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

  void _nextImage() {
    setState(() {
      _index = (_index + 1) % _images.length;
    });
  }

  void _prevImage() {
    setState(() {
      _index = (_index - 1) % _images.length;
      if (_index < 0) {
        _index = _images.length - 1;
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 500,
                      width: 500,
                      margin: EdgeInsets.all(20.00),
                      padding: EdgeInsets.all(10.00),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 5.0),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            const BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 10,
                                blurRadius: 7,
                                offset: Offset(0,3)
                            )]
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(_images[_index],
                          fit: BoxFit.fitWidth,),)
                  ),
                  SizedBox(height: 100),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FilledButton(
                          onPressed: _prevImage,
                          child: Icon(Icons.arrow_back),
                        ),
                        SizedBox(width: 100),
                        FilledButton(
                          onPressed: _nextImage,
                          child: Icon(Icons.arrow_forward),
                        )
                      ]
                  )
                ]
            )
        ));
  }
}

