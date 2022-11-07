import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_test/constants.dart';
import 'package:shop_test/modals/product.dart';
import 'package:shop_test/screens/details/components/buttom_add_to_shop.dart';
import 'package:shop_test/screens/details/components/image_product.dart';
import 'package:shop_test/screens/details/components/list_of_button_details.dart';
import 'package:shop_test/screens/details/components/title_and_price.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool _isVisible = true;

  void showDetails() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageProduct(image: widget.product.image!),
            TitleAndPrice(
              title: widget.product.title!,
              price: widget.product.price!,
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            const ListOfButtonsDetails(),
            Padding(
              padding: const EdgeInsets.only(
                top: kDefaultPadding,
                left: kDefaultPadding,
                right: kDefaultPadding,
              ),
              child: Row(
                children: [
                  Text(
                    "Detail".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  _isVisible
                      ? IconButton(
                          icon: const Icon(
                            IconData(0xea4f, fontFamily: 'MaterialIcons'),
                          ),
                          color: Colors.orange,
                          onPressed: showDetails)
                      : IconButton(
                          icon: const Icon(
                            IconData(0xea4c, fontFamily: 'MaterialIcons'),
                          ),
                          color: Colors.orange,
                          onPressed: showDetails),
                ],
              ),
            ),
            Visibility(
              visible: _isVisible,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                    bottom: kDefaultPadding / 2),
                child: Text(widget.product.description!),
              ),
            ),
            const SizedBox(
              height: kDefaultPadding,
            )
          ],
        ),
      ),
      bottomNavigationBar: ButtonAddToShop(
        icon: const IconData(0xf37d, fontFamily: 'MaterialIcons'),
        title: "Add to shoping bag",
        product: widget.product,
      ),
    );
  }
}
