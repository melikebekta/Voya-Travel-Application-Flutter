import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int _curindex = 0;

  @override
  Widget build(BuildContext context) {
    final double heightslider = MediaQuery.of(context).size.height;
    final double widthslider = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: widthslider, // Sayfanın tamamını kaplamak için genişliği ayarladık
        child: CarouselSlider(
          options: CarouselOptions(
            height: 250,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _curindex = index;
              });
            },
          ),
          items: [
            'assets/image/otel1.jpg',
            'assets/image/otel2.jpg',
            'assets/image/otel3.jpg',
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: heightslider,
                    width: 200, // Tam genişlik olarak ayarlandı
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(i),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

