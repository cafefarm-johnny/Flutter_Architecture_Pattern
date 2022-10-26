import 'package:flutter/material.dart';
import 'package:flutter_mvc/basic/pages/catalog.dart';
import 'package:flutter_mvc/mvc/views/catalog.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Johnny's Shop"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const BasicCatalog());
                },
                child: const Text('Basic Catalog'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => MvcCatalog());
                },
                child: const Text('MVC Catalog'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
