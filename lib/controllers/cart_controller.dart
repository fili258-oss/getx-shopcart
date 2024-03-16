import 'package:get/get.dart';
import 'package:getx_app/models/product.dart';

class CartController extends GetxController {
  List <Product> stockProductS = [
      Product(name: "Celular Xiaomi", price: 10000, inStock: 25),
      Product(name: "Computador ASUS", price: 2500000, inStock: 5),
      Product(name: "Play 4", price: 3200000, inStock: 10),
      Product(name: "Computador HP Pavilon", price: 3580000, inStock: 15),
      Product(name: "Televisor Xiaomi", price: 6500000, inStock: 9),
      Product(name: "Tablet Lenovo", price: 1700000, inStock: 19),
      Product(name: "Celular MG Plus", price: 1470000, inStock: 45)
    ].obs;
    
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