import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    this.imageColor,
    this.imageHeight = 0.2,
    this.heightBetween,
    required this.image,
    required this.title,
    required this.subTitle,
    this.textAlign,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    super.key,
  });
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final String image, title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(image: AssetImage(image), height: size.height * 0.2),
        Text(title, style: Theme.of(context).textTheme.headline1),
        Text(
          subTitle,
          textAlign: textAlign,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
