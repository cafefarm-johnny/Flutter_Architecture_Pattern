import 'package:get/get.dart';

import '../models/product.dart';

class ProductController extends GetxController {
  // RxVariables
  final carrot = Product(
    id: "p_1",
    imgName: 'carrot',
    name: '당근',
    quantity: 0,
  ).obs;

  final potato = Product(
    id: "p_2",
    imgName: 'potato',
    name: '감자',
    quantity: 0,
  ).obs;

  final tomato = Product(
    id: "p_3",
    imgName: 'tomato',
    name: '토마토',
    quantity: 0,
  ).obs;

  // Handlers
  List<Rx<Product>> fetch() {
    return [carrot, potato, tomato];
  }

  void increaseCarrotQuantity() {
    carrot.update((val) {
      val?.increase();
    });
  }

  void increasePotatoQuantity() {
    potato.update((val) {
      val?.increase();
    });
  }

  void increaseTomatoQuantity() {
    tomato.update((val) {
      val?.increase();
    });
  }

  void decreaseCarrotQuantity() {
    carrot.update((val) {
      val?.decrease();
    });
  }

  void decreasePotatoQuantity() {
    potato.update((val) {
      val?.decrease();
    });
  }

  void decreaseTomatoQuantity() {
    tomato.update((val) {
      val?.decrease();
    });
  }
}
