import 'package:flutter/material.dart';
import 'package:getx_app/screens/cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tienda",
      theme: ThemeData(        
        useMaterial3: false,
        primarySwatch: Colors.blue
      ),     
      home: MyCartScreen(),
    );
  }
}
