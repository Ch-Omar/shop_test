import 'package:flutter/material.dart';
import 'package:shop_test/constants.dart';

class MainImage extends StatelessWidget {
  const MainImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(),
            child: const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image(
                image: AssetImage("assets/images/HUGO.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Brace yourself!\nGet yours!".toUpperCase(),
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: kTextColorActive, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Positioned(
              bottom: 20,
              left: 15,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Shop Now".toUpperCase(),
                        style: const TextStyle(color: kTextColorActive),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
