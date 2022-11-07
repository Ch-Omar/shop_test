import 'package:flutter/material.dart';
import 'package:shop_test/constants.dart';
import 'package:shop_test/screens/home/components/header.dart';
import 'package:shop_test/screens/home/components/liste_of_products.dart';
import 'package:shop_test/screens/home/components/main_image.dart';
import 'package:shop_test/screens/home/components/list_of_buttons.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          Header(),
          MainImage(),
          ListOfButtons(),
          ListOfProducts(),
        ],
      ),
    );
  }
}
