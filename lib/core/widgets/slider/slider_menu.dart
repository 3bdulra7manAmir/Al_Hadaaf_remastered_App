import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import 'slider_builder.dart';
import 'slider_dots.dart';

class PlayerScrollMenu extends StatefulWidget
{
  const PlayerScrollMenu({
    super.key, 
    this.imgs, 
    this.widgets,
    this.enlargeCenterPage, 
    this.autoPlay, 
    required this.height
  });

  final List<String>? imgs;
  final List<Widget>? widgets;
  final bool? enlargeCenterPage;
  final bool? autoPlay;
  final double height;

  @override
  State<PlayerScrollMenu> createState() => _PlayerScrollMenuState();
}

class _PlayerScrollMenuState extends State<PlayerScrollMenu>
{
  int current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context)
  {
    final itemsLength = widget.imgs?.length ?? widget.widgets?.length ?? 0;
    return Column(
      children:
      [
        CustomCarousel(
          controller: _controller,
          imgs: widget.imgs,
          widgets: widget.widgets,
          enlargeCenterPage: widget.enlargeCenterPage ?? true,
          autoPlay: widget.autoPlay ?? true,
          onPageChanged: (index) => setState(() => current = index), 
          height: widget.height,
        ),
        Sizes.s17.verticalSpace,
        SliderDots(
          controller: _controller,
          itemsLength: itemsLength,
          currentPostition: current.toDouble(),
        ),
      ],
    );
  }
}


