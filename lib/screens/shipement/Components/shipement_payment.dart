import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_test/constants.dart';

class ShipmentAndPayment extends StatelessWidget {
  const ShipmentAndPayment({
    Key? key,
    required this.image,
    required this.title,
    required this.type,
  }) : super(key: key);

  final String image, title, type;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPadding / 2,
        right: kDefaultPadding,
        bottom: kDefaultPadding / 2,
        left: kDefaultPadding,
      ),
      padding: const EdgeInsets.all(kDefaultPadding),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 199, 196, 196),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            image,
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 2),
            child: Text(
              title.toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding / 2),
            child: Text(
              type,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Icon(IconData(0xe355, fontFamily: 'MaterialIcons'))
        ],
      ),
    );
  }
}
