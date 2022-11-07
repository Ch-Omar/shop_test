import 'package:flutter/material.dart';
import 'package:shop_test/constants.dart';
import 'package:shop_test/screens/shipement/shipement_screen.dart';

class PayNow extends StatelessWidget {
  const PayNow({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: SizedBox(
          width: size.width,
          height: 64,
          child: TextButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const ShipementScreen(),
              //   ),
              // );
            },
            style: TextButton.styleFrom(
              backgroundColor: kTextColorInactive,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            child: Container(
              child: Text(
                title.toUpperCase(),
                style: const TextStyle(color: kTextColorActive, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
