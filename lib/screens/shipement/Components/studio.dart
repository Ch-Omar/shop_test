import 'package:flutter/material.dart';
import 'package:shop_test/constants.dart';

class Studio extends StatelessWidget {
  const Studio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Container(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Studio\n".toUpperCase(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              "jimmy sullivan [+6281391492133]",
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              "perumahan smart sultan 7475 jalan sejahtera.",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding),
              child: Container(
                color: const Color.fromARGB(139, 158, 158, 158),
                height: 2,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
