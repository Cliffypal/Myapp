import 'package:flutter/material.dart';
import 'shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sales
List<Shoe> shoeShop = [
   Shoe(
     name: 'Zee',
    price: '234',
    description: 'we are here for you',
     imagePath: 'lib/images/nike2.png', fit: BoxFit.fitHeight,
 ),

  Shoe(
    name: 'Zee',
    price: '234',
    description: 'we are here for you',
    imagePath: 'lib/images/nike3.png',fit: BoxFit.contain

  ),
  Shoe(
    name: 'Zee',
    price: '234',
    description: 'we are here for you',
    imagePath: 'lib/images/nike2.png', fit: BoxFit.contain

  ),
  Shoe(
    name: 'Zee',
    price: '234',
    description: 'we are here for you', imagePath: 'lib/images/nike5.png',fit: BoxFit.contain,

  ),
];



  // list of items

List<Shoe> userCart = [];

  // get list of item

List<Shoe> getUserCart() {
  return userCart;
}
//add iterm
void addItermToCart(Shoe shoe){
  userCart.add(shoe);
  notifyListeners();
}
  //get list of items for sales
void removeItermFromCart(Shoe shoe){
   userCart.remove(shoe);
   notifyListeners();
}

  getShoeList() {}
}

