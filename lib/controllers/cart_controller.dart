import 'package:get/get.dart';
import 'package:getx_app/models/product.dart';

class CartController extends GetxController {
  
  List <int> stocksProductsQuantity = [150,250,960,450,478,965,214].obs;  
  List <Product> stockProductS = [
      Product(name: "Celular Xiaomi", price: 10000, inStock: 0),
      Product(name: "Computador ASUS", price: 2500000, inStock: 0),
      Product(name: "Play 4", price: 3200000, inStock: 0),
      Product(name: "Computador HP Pavilon", price: 3580000, inStock: 0),
      Product(name: "Televisor Xiaomi", price: 6500000, inStock: 0),
      Product(name: "Tablet Lenovo", price: 1700000, inStock: 0),
      Product(name: "Celular MG Plus", price: 1470000, inStock: 0)
    ].obs;
    
  var products = <Product>[].obs;
  var totalProducts = 0.obs;
  
  void uploadStocks()
  {
    for (int i = 0; i < stockProductS.length; i++) {
      if (i < stocksProductsQuantity.length) {
        stockProductS[i].inStock = stocksProductsQuantity[i];
      }
    }
  }

  
  void updateProduct(itemProduct)
  {
    uploadStocks();
    Product productFound = stockProductS[itemProduct];
    productFound.inStock--;
           
    totalProducts++;
  }
  
  void removeProduct(int index)
  {
    products.removeAt(index);
  }

  

}