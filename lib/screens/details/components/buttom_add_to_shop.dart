import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_test/constants.dart';
import 'package:shop_test/controller/product_bag_controlle.dart';
import 'package:shop_test/modals/product.dart';
import 'package:shop_test/screens/shipement/shipement_screen.dart';

class ButtonAddToShop extends StatelessWidget {
  const ButtonAddToShop({
    Key? key,
    required this.icon,
    required this.title,
    required this.product,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProductsBagController _productsBagController = Get.put(
      ProductsBagController(),
    );

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: SizedBox(
          width: size.width,
          height: 64,
          child: TextButton(
            onPressed: () {
              var verif = false;
              var i = 0;
              while (verif == true &&
                  i > _productsBagController.productsBag.length &&
                  _productsBagController.productsBag.isEmpty) {
                i++;
                if (product.id == _productsBagController.productsBag[i].id) {
                  product.count = (product.count! + 1);
                  _productsBagController.productsBag[i] = product;
                  verif = true;
                }
              }
              if (verif == false) {
                product.count = (product.count! + 1);
                _productsBagController.productsBag.add(product);
              }

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShipementScreen(),
                ),
              );
            },
            style: TextButton.styleFrom(
              backgroundColor: kTextColorInactive,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding / 2),
                  child: Icon(
                    icon,
                    color: kTextColorActive,
                  ),
                ),
                Text(
                  title.toUpperCase(),
                  style: const TextStyle(color: kTextColorActive, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
