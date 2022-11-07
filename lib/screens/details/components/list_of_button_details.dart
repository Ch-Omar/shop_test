import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_test/constants.dart';
import 'package:shop_test/screens/home/components/buttons.dart';

class ListOfButtonsDetails extends StatelessWidget {
  const ListOfButtonsDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding / 2, right: kDoubleTapSlop / 5),
        child: Row(
          children: [
            Buttons(
              title: "New".toUpperCase(),
              textColor: kTextColorActive,
              backgroundColor: Colors.orange,
            ),
            Buttons(
              title: "Boss x freddie mercury".toUpperCase(),
              textColor: kTextColorActive,
              backgroundColor: kTextColorInactive,
            ),
            Buttons(
              title: "Regular fit".toUpperCase(),
              textColor: kTextColorActive,
              backgroundColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
