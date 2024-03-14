import 'package:get/get.dart';
import 'package:getx_app/models/product.dart';

class CartController extends GetxController {
  var products = <Product>[].obs;

  void addProduct(Product product)
  {
    products.add(product);
  }

  void removeProduct(int index)
  {
    products.removeAt(index);
  }

}