import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_test/constants.dart';
import 'package:shop_test/screens/recept/Components/pay_now.dart';

class Recept extends StatelessWidget {
  const Recept({super.key, required this.sum});

  final double sum;

  @override
  Widget build(BuildContext context) {
    final double service = sum / 139;
    const double dicount = 20;
    final double total = sum + service - dicount;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recept'.toUpperCase(),
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
      body: Column(
        children: [
          Container(
              height: 120,
              margin: const EdgeInsets.symmetric(
                vertical: kDefaultPadding * 5,
              ),
              padding: const EdgeInsets.all(kDefaultPadding),
              alignment: Alignment.center,
              child: Container(
                width: 170,
                height: 120,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 244, 182, 199),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Text(
                  'Klarna.',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Subtotal :".toUpperCase(),
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding),
                          child: Text(
                            "Shipment service :".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "Discount :".toUpperCase(),
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "\$ ${sum.toStringAsFixed(2)}",
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding),
                          child: Text(
                            "\$ ${service.toStringAsFixed(2)}",
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "\$ ${dicount.toStringAsFixed(2)}",
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: kDefaultPadding),
                  child: Container(
                    color: const Color.fromARGB(139, 158, 158, 158),
                    height: 2,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: kDefaultPadding),
                  child: Row(
                    children: [
                      Text(
                        "Total payment".toUpperCase(),
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        "\$ ${total.toStringAsFixed(2)}",
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const PayNow(title: "Pay now"),
    );
  }
}
