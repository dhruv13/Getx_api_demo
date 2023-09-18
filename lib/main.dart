import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_data_api/controller/productcontroller.dart';
import 'package:new_data_api/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
