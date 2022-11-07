import 'package:flutter/material.dart';
import 'package:shop_test/constants.dart';

class ShipementLocation extends StatelessWidget {
  const ShipementLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Text(
            "Shipement Location".toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Text(
            "Change Location".toUpperCase(),
            style: const TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
