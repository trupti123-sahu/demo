import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

import 'homescreen.dart';

// ignore: camel_case_types
class introSlider extends StatefulWidget {
  @override
  _introSliderState createState() => _introSliderState();
}

// ignore: camel_case_types
class _introSliderState extends State<introSlider> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        description: 'When you open a book, you open a new world',
        //pathImage: "images/photo_eraser.png",
        backgroundColor: Color(0xfff5a623),
      ),
    );
    slides.add(
      new Slide(
        title: "BOOKS",
        description:
            "A book is a medium for recording information in the form of writing or images, typically composed of many pages bound together and protected by a cover.",

        //pathImage: "images/photo_pencil.png",
        backgroundColor: Color(0xff203152),
      ),
    );
    slides.add(
      new Slide(
        title: "ROLE OF BOOKS",
        description:
            "A book is like a best friend who will never walk away from you. Books are packed with knowledge, insights into a happy life, life lessons, love, fear, prayer and helpful advice.",
        //pathImage: "images/photo_ruler.png",
        backgroundColor: Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}
