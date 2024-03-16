import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controllers/cart_controller.dart';
import 'package:getx_app/models/product.dart';

class MyCartScreen extends StatelessWidget {
  MyCartScreen({super.key});
  final CartController cartController = Get.put(CartController());
  final TextEditingController _taskTitleController = TextEditingController();
  //var listProducts = cartController.getProductsInvetary();
  
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
                        
                        trailing: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: const TextField(),
                          
                        ),
                      );
          
                    },
          
                  ),
                ) 
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _taskTitleController,
                  decoration: InputDecoration(
                    labelText: 'New task',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ),
    );
    
  }

}