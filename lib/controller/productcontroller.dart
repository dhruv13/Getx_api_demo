import 'package:get/get.dart';
import 'package:new_data_api/models/product.dart';
import 'package:new_data_api/services/service.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = List<Product>.empty(growable: true).obs;

//  static var product;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var product =
          await RemoteServices.fetchProducts(); // Fetch a single product
      if (product != null) {
        productList.value = [product]; // Wrap it in a list and assign it
      }
    } finally {
      isLoading(false);
    }
  }
}
