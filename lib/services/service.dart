import 'package:http/http.dart' as http;
import 'package:new_data_api/models/product.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<Product?> fetchProducts() async {
    var response =
        await client.get(Uri.parse('https://api.jikan.moe/v4/anime'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      //show error message
      throw Exception('HTTP Failed');
      //return null;
    }
  }
}
