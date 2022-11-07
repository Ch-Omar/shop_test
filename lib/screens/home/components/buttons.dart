import 'package:flutter/material.dart';
import 'package:shop_test/constants.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    required this.title,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  final String title;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding / 2),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            child: Text(
              title.toUpperCase(),
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
