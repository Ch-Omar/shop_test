import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_test/constants.dart';
import 'package:shop_test/controller/products_controller.dart';
import 'package:shop_test/screens/details/details_screen.dart';

class ListOfProducts extends StatefulWidget {
  const ListOfProducts({
    Key? key,
  }) : super(key: key);

  @override
  State<ListOfProducts> createState() => _ListOfProductsState();
}

class _ListOfProductsState extends State<ListOfProducts> {
  final ProductsController _productsController = Get.put(
    ProductsController(),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: kDefaultPadding,
        left: kDefaultPadding / 2,
        right: kDefaultPadding / 2,
      ),
      child: SizedBox(
        // height: size.height - 160,
        child: Obx(
          () {
            return _productsController.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : GridView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: _productsController.products.value.length,
                    itemBuilder: (context, index) {
                      return Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(kDefaultPadding / 2),
                          child: Stack(
                            children: [
                              Ink.image(
                                padding:
                                    const EdgeInsets.all(kDefaultPadding / 2),
                                image: NetworkImage(
                                  _productsController
                                      .products.value[index].image!,
                                ),
                                fit: BoxFit.contain,
                                child: InkWell(onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailsScreen(
                                          product: _productsController
                                              .products.value[index]),
                                    ),
                                  );
                                }),
                              ),
                              Positioned(
                                bottom: 30,
                                left: 10,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 198.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '\$: ${_productsController.products.value[index].price!.toString()}',
                                        style: const TextStyle(
                                            color: kTextColorActive,
                                            fontSize: 16,
                                            shadows: [
                                              Shadow(
                                                offset: Offset(1, 0),
                                              ),
                                              Shadow(
                                                offset: Offset(1, 0),
                                                blurRadius: 8.0,
                                                color:
                                                    Color.fromARGB(15, 7, 7, 7),
                                              ),
                                            ]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, right: 10000000),
                                        child: Text(
                                          _productsController
                                              .products.value[index].title!
                                              .toUpperCase(),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          softWrap: false,
                                          style: const TextStyle(
                                              color: kTextColorActive,
                                              fontSize: 14,
                                              shadows: [
                                                Shadow(
                                                  offset: Offset(1, 0),
                                                ),
                                                Shadow(
                                                  offset: Offset(1, 0),
                                                  blurRadius: 8.0,
                                                  color: Color.fromARGB(
                                                      15, 7, 7, 7),
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
          },
        ),
      ),
    );
  }
}
