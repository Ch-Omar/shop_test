import 'package:flutter/material.dart';
import 'package:shop_test/constants.dart';

class TitleShipement extends StatelessWidget {
  const TitleShipement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: kDefaultPadding,
        right: kDefaultPadding,
        bottom: kDefaultPadding / 2,
        left: kDefaultPadding,
      ),
      child: Text(
        "Products".toUpperCase(),
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
