import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCarousel extends StatelessWidget
{
  const CustomCarousel({
    super.key,
    this.imgs,
    this.widgets,
    required this.controller,
    required this.onPageChanged,
    required this.enlargeCenterPage,
    required this.autoPlay, 
    this.height,
  });

  final List<String>? imgs;
  final List<Widget>? widgets;
  final CarouselSliderController controller;
  final double? height;
  final bool enlargeCenterPage;
  final bool autoPlay;
  final Function(int) onPageChanged;

  @override
  Widget build(BuildContext context)
  {
    final itemCount = imgs?.length ?? widgets?.length ?? 0;
    return CarouselSlider.builder(
      itemCount: itemCount,
      carouselController: controller,
      itemBuilder: (_, index, _)
      {
        if (imgs != null) {
          return SvgPicture.asset(imgs![index]);
        } else {
          return widgets![index];
        }
      },
      options: CarouselOptions(
        height: height,
        enlargeCenterPage: enlargeCenterPage,
        autoPlay: autoPlay,
        onPageChanged: (index, reason) => onPageChanged(index),
      ),
    );
  }
}

