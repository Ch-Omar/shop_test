import 'package:flutter/material.dart';
import 'package:shop_test/constants.dart';

class ImageProduct extends StatelessWidget {
  const ImageProduct({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Container(
        color: Colors.white,
        child: SizedBox(
          height: size.height * 0.5,
          width: size.width,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                      bottom: kDefaultPadding),
                  child: Image(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(image),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
