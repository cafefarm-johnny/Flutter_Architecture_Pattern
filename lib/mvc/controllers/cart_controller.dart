import 'package:get/get.dart';

import '../models/cart.dart';
import '../models/product.dart';

class CartController extends GetxController {
  // RxVariables
  final cart = Cart().obs;

  // Handlers
  void add(Product product) {
    cart.update((val) {
      val?.add(product.id, product.name, product.price, product.quantity);
    });
  }
}
