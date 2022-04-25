import 'package:ebook_app_demo/constant.dart';
import 'package:flutter/material.dart';

class TwoSizeRoundedButton extends StatelessWidget {
  final double radius;
  final String text;
  final VoidCallback? press;
  const TwoSizeRoundedButton({
    Key? key,
    this.radius = 29,
    required this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
