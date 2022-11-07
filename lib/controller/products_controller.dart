import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shop_test/modals/product.dart';

class ProductsController extends GetxController {
  Rx<List<Product>> products = Rx<List<Product>>([]);
  final isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    getAllProducts();
  }

  Future getAllProducts() async {
    try {
      isLoading.value = true;
      final url = Uri.parse(
          'http://fakestoreapi.com/products?fbclid=IwAR2yLhmTope8nYxciVO-UbIseDMTjZMoL_4kXLUUcpQfu3GJLv3NWNvfGBs');
      final http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        isLoading.value = false;
        final content = json.decode(response.body);
        for (var item in content) {
          products.value.add(
            Product.fromJson(item),
          );
        }
      } else {
        isLoading.value = false;
      }
    } catch (e) {
      print(
        e.toString(),
      );
    }
  }
}
