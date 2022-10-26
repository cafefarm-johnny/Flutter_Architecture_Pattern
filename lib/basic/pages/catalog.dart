import 'package:flutter/material.dart';
import 'package:flutter_mvc/basic/models/product.dart';

class BasicCatalog extends StatefulWidget {
  const BasicCatalog({Key? key}) : super(key: key);

  @override
  State<BasicCatalog> createState() => _BasicCatalogState();
}

class _BasicCatalogState extends State<BasicCatalog> {
  // RxVariables
  Product carrot = Product(
    id: 'p_1',
    imgName: 'carrot',
    name: '당근',
    quantity: 0,
  );

  Product potato = Product(
    id: 'p_2',
    imgName: 'potato',
    name: '감자',
    quantity: 0,
  );

  Product tomato = Product(
    id: 'p_3',
    imgName: 'tomato',
    name: '토마토',
    quantity: 0,
  );

  // Handlers
  void _handleDecrease(Product product) {
    setState(() {
      product.decrease();
    });
  }

  void _handleIncrease(Product product) {
    setState(() {
      product.increase();
    });
  }

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
      children: [carrot, potato, tomato]
          .map((Product product) => _createProduct(product))
          .toList(),
    );
  }

  Widget _createProduct(Product product) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'imgs/product/${product.imgName}.png',
          width: 50,
        ),
        Text(
          product.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '수량: ${product.quantity}',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        _createQuantityButtonLayout(product),
        _createCartButtonLayout(),
      ],
    );
  }

  Widget _createQuantityButtonLayout(Product product) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _createDecreaseButton(product),
        _createIncreaseButton(product),
      ],
    );
  }

  Widget _createDecreaseButton(Product product) {
    return SizedBox(
      width: 40,
      child: ElevatedButton(
        onPressed: () => _handleDecrease(product),
        child: const Icon(
          Icons.remove,
          size: 15,
        ),
      ),
    );
  }

  Widget _createIncreaseButton(Product product) {
    return SizedBox(
      width: 40,
      child: ElevatedButton(
        onPressed: () => _handleIncrease(product),
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
