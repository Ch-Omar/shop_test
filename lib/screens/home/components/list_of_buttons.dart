import 'package:flutter/material.dart';
import 'package:shop_test/constants.dart';
import 'package:shop_test/screens/home/components/buttons.dart';

class ListOfButtons extends StatelessWidget {
  const ListOfButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: const [
          Buttons(
            title: "New in",
            textColor: kTextColorActive,
            backgroundColor: Colors.black,
          ),
          Buttons(
            title: "Clothing",
            textColor: kTextColorInactive,
            backgroundColor: Colors.white,
          ),
          Buttons(
            title: "New in",
            textColor: kTextColorInactive,
            backgroundColor: Colors.white,
          ),
          Buttons(
            title: "Boss & New",
            textColor: kTextColorInactive,
            backgroundColor: Colors.white,
          ),
          Buttons(
            title: "New in",
            textColor: kTextColorInactive,
            backgroundColor: Colors.white,
          ),
        ]),
      ),
    );
  }
}
