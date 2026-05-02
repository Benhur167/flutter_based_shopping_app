import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier{
  final List<Map<String,dynamic>> cart=[];

  void addProduct(Map<String,dynamic> product){
    cart.add(product);
    notifyListeners();
  }
  void removeProduct(Map<String,dynamic> product){
    cart.remove(product);
    notifyListeners(); //notifies all the things that are listening to this cart provider
  }
}