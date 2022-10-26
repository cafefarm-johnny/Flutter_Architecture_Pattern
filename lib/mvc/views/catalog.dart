import 'package:flutter/material.dart';
import 'package:flutter_mvc/mvc/models/product.dart';
import 'package:get/get.dart';

import '../controllers/cart_controller.dart';
import '../controllers/product_controller.dart';

class MvcCatalog extends StatelessWidget {
  MvcCatalog({Key? key}) : super(key: key);

  // Controllers
  final productController = Get.put(ProductController());
  final cartController = Get.put(CartController());

  // Views
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Johnny's Shop"),
      ),
      body: Center(
        child: _catalog(),
      ),
    );
  }

  Widget _catalog() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: productController
          .fetch()
          .map((Rx<Product> product) => _createProduct(product))
          .toList(),
    );
  }

  Widget _createProduct(Rx<Product> product) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'imgs/product/${product.value.imgName}.png',
          width: 50,
        ),
        Text(
          product.value.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Obx(
          () => Text(
            '수량: ${product.value.quantity}',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        _createQuantityButtonLayout(product),
        _createCartButtonLayout(),
      ],
    );
  }

  Widget _createQuantityButtonLayout(Rx<Product> product) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _createDecreaseButton(product),
        _createIncreaseButton(product),
      ],
    );
  }

  Widget _createDecreaseButton(Rx<Product> product) {
    return SizedBox(
      width: 40,
      child: ElevatedButton(
        onPressed: () {
          if (product.value.name == '당근') {
            productController.decreaseCarrotQuantity();
            return;
          }

          if (product.value.name == '감자') {
            productController.decreasePotatoQuantity();
            return;
          }

          if (product.value.name == '토마토') {
            productController.decreaseTomatoQuantity();
            return;
          }
        },
        child: const Icon(
          Icons.remove,
          size: 15,
        ),
      ),
    );
  }

  Widget _createIncreaseButton(Rx<Product> product) {
    return SizedBox(
      width: 40,
      child: ElevatedButton(
        onPressed: () {
          if (product.value.name == '당근') {
            productController.increaseCarrotQuantity();
            return;
          }

          if (product.value.name == '감자') {
            productController.increasePotatoQuantity();
            return;
          }

          if (product.value.name == '토마토') {
            productController.increaseTomatoQuantity();
            return;
          }
        },
        child: const Icon(
          Icons.add,
          size: 15,
        ),
      ),
    );
  }

  Widget _createCartButtonLayout() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('담기'),
    );
  }
}
