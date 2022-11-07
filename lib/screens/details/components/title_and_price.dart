import 'package:flutter/material.dart';
import 'package:shop_test/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
    String priceString = price.toStringAsFixed(2);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '\$ $priceString\n\n',
                    style: const TextStyle(
                        fontSize: 20,
                        color: kTextColorInactive,
                        fontWeight: FontWeight.w300),
                  ),
                  TextSpan(
                    text: title,
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: kTextColorInactive, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
