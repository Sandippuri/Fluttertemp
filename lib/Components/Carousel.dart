import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WallpaperCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CarouselSlider(
        options: CarouselOptions(height: 250, autoPlay: true),
        items: [
          MyImageView("../lib/images/bg1.png"),
          MyImageView("../lib/images/bg2.png"),
          MyImageView("../lib/images/bg3.png"),
          MyImageView("../lib/images/bg4.png"),
          MyImageView("../lib/images/bg5.png"),
        ]);
  }
}

class MyImageView extends StatelessWidget {
  String imgPath;

  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(
            imgPath,
          ),
        ));
  }
}
