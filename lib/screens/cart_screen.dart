import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controllers/cart_controller.dart';
import 'package:getx_app/models/product.dart';

class MyCartScreen extends StatelessWidget {
  MyCartScreen({super.key});
  final CartController cartController = Get.put(CartController());
        
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,      
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.account_circle_rounded),
          backgroundColor: Colors.blue,
          title: const Text('Mi carrito'),
          elevation: 15,          
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    itemCount: cartController.stockProductS.length,
                    itemBuilder: (context, index) {
                      Product product = cartController.stockProductS[index];
                      return ListTile(
                        title: Text(product.name),
                        subtitle: Text('Unidades disponibles: ${product.inStock}',
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.red),
                        ),
                        trailing: IconButton(
                        icon: const Icon(Icons.add_shopping_cart_rounded),
                        onPressed: () {
                          cartController.updateProduct(index);
                        },
                      ),
                      );          
                    },                                                  
                  ),
                  
                ) 
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 249, 255, 223),                                          
                        border: Border.all(width: 2,color: Colors.blue),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      
                      width: 350,
                      height: 80,
                      alignment: Alignment.center,
                      
                      child: Column(
                        children: [
                          const Text(
                            'Total de productos:',
                            style: TextStyle(fontSize: 18),
                          ),
                          Obx(
                            () => Text(
                              '${cartController.totalProducts}',
                              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                                      
                    ),
                                    
                  ],
                ),
              ),
            ],
          ),
        ),
        ),
    );
    
  }

}