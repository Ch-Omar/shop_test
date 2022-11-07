import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_test/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(115, 49, 49, 49),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/scan-icon.svg"),
            ),
          ),
          const Spacer(),
          Container(
            color: Colors.white,
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    "Man".toUpperCase(),
                    style: const TextStyle(color: kTextColorActive),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Woman".toUpperCase(),
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(115, 49, 49, 49),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                color: Colors.black,
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
