import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:provider/provider.dart';
import 'package:sneaker/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    
    Shoe(
        name: 'Puma Nitro',
        price: '240',
        imagePath: 'lib/images/nitro.webp',
        description:
            'The foward thinking design of his latest signature shoe.'),
    Shoe(
        name: 'Zoom freak',
        price: '100',
        imagePath: 'lib/images/shoe8.png',
        description:
            'You\'ve got the hops and the speed-lace up in shoes that enhance performance'),
    Shoe(
        name: 'Air Force',
        price: '250',
        imagePath: 'lib/images/shoe14.png',
        description:
            'A secure midfoot strap is suited for scoring binges and defensive actions.'),
    Shoe(
        name: 'Nike sports',
        price: '150',
        imagePath: 'lib/images/shoe13.png',
        description:
            'Bouncy cushioning is paired with soft yet supportive from for resting feet.')
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
