import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shop_test/constants.dart';
import 'package:shop_test/controller/product_bag_controlle.dart';
import 'package:shop_test/modals/product.dart';
import 'package:shop_test/screens/shipement/Components/bottom_shipement.dart';
import 'package:shop_test/screens/shipement/Components/shipement_location.dart';
import 'package:shop_test/screens/shipement/Components/shipement_payment.dart';
import 'package:shop_test/screens/shipement/Components/studio.dart';
import 'package:shop_test/screens/shipement/Components/title_shipement.dart';

class ShipementScreen extends StatefulWidget {
  const ShipementScreen({super.key});

  @override
  State<ShipementScreen> createState() => _ShipementScreenState();
}

class _ShipementScreenState extends State<ShipementScreen> {
  final ProductsBagController _productsBagController =
      Get.put(ProductsBagController());
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shipement'.toUpperCase(),
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
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
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const ShipementLocation(),
              const Studio(),
              const ShipmentAndPayment(
                image: "assets/icons/truck.svg",
                title: "Shipement",
                type: "FedEX",
              ),
              const ShipmentAndPayment(
                image: "assets/icons/credit-card.svg",
                title: "Payment",
                type: "Klarna",
              ),
              Column(
                children: [
                  const TitleShipement(),
                  SizedBox(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: _productsBagController.productsBag.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding),
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding),
                          child: Row(
                            children: [
                              Image.network(
                                _productsBagController
                                    .productsBag[index].image!,
                                fit: BoxFit.contain,
                                width: size.width * 0.2,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: kDefaultPadding),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '\$ ${_productsBagController.productsBag[index].price!.toStringAsFixed(2)}',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: kDefaultPadding / 2),
                                      child: SizedBox(
                                        width: size.width * 0.6,
                                        child: Text(
                                          _productsBagController
                                              .productsBag[index].title!,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 28,
                                          height: 28,
                                          child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor: Colors.black,
                                              padding: EdgeInsets.zero,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                _productsBagController
                                                        .productsBag[index]
                                                        .count =
                                                    _productsBagController
                                                            .productsBag[index]
                                                            .count! +
                                                        1;
                                              });
                                            },
                                            child: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(
                                              kDefaultPadding / 2),
                                          child: Text(
                                            _productsBagController
                                                .productsBag[index].count!
                                                .toString(),
                                            style:
                                                const TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 28,
                                          height: 28,
                                          child: OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                backgroundColor: Colors.black,
                                                padding: EdgeInsets.zero,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                              ),
                                              onPressed: () {
                                                if (_productsBagController
                                                        .productsBag[index]
                                                        .count! >
                                                    1) {
                                                  setState(() {
                                                    _productsBagController
                                                            .productsBag[index]
                                                            .count =
                                                        _productsBagController
                                                                .productsBag[
                                                                    index]
                                                                .count! -
                                                            1;
                                                  });
                                                }
                                              },
                                              child: const Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                              )),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(
                                              kDefaultPadding / 2),
                                          child: Text(
                                            "Size :",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16),
                                          ),
                                        ),
                                        const Text(
                                          "L",
                                          style: TextStyle(fontSize: 16),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomShipement(),
    );
  }
}
