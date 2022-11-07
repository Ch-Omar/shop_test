import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_test/constants.dart';
import 'package:shop_test/controller/product_bag_controlle.dart';
import 'package:shop_test/screens/recept/recept.dart';

// ignore: camel_case_types
class bottomShipement extends StatelessWidget {
  const bottomShipement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final ProductsBagController _productsBagController =
        Get.put(ProductsBagController());
    double sum = 0;
    for (var productbag in _productsBagController.productsBag) {
      sum = sum + productbag.price!.toDouble() * productbag.count!;
    }
    String sumString = sum.toStringAsFixed(2);
    return Container(
        padding: const EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          top: kDefaultPadding,
        ),
        color: Colors.white,
        height: 185,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 199, 196, 196),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Text(
                "Use your promo codo".toUpperCase(),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            "Total Payment".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "\$ $sumString",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Recept(sum: sum),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: kDefaultPadding / 2,
                      bottom: kDefaultPadding / 2,
                      right: kDefaultPadding,
                      left: kDefaultPadding,
                    ),
                    child: Text(
                      "Checkout".toUpperCase(),
                      style: const TextStyle(
                          color: kTextColorActive,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
