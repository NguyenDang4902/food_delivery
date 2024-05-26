import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
        name: "Cheese Burger",
        description: "lorem ipsum",
        imagePath: "images/burgers/cheeseburger.jpg",
        price: 1.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Chicken Burger",
        description: "lorem ipsum",
        imagePath: "images/burgers/chicken_burger.jpg",
        price: 2.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Grileed Onions", price: 0.99),
          Addon(name: "Bacon", price: 0.49),
          Addon(name: "Extra BBQ Sauce", price: 2.19)
        ]),
    Food(
        name: "Green Chile Burger",
        description: "lorem ipsum",
        imagePath: "images/burgers/green_chile_burger.jpg",
        price: 1.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Mushroom Burger",
        description: "lorem ipsum",
        imagePath: "images/burgers/mushroom_burger.jpg",
        price: 1.59,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Onion Burger",
        description: "lorem ipsum",
        imagePath: "images/burgers/onion_burger.jpg",
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Cheese Cake",
        description: "lorem ipsum",
        imagePath: "images/desserts/cheesecake.jpg",
        price: 2.99,
        category: FoodCategory.deserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Cookies",
        description: "lorem ipsum",
        imagePath: "images/desserts/cookies.jpg",
        price: 0.99,
        category: FoodCategory.deserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Flan Cake",
        description: "lorem ipsum",
        imagePath: "images/desserts/flan_cake.jpg",
        price: 1.99,
        category: FoodCategory.deserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Ice Cream",
        description: "lorem ipsum",
        imagePath: "images/desserts/ice_cream.jpg",
        price: 1.99,
        category: FoodCategory.deserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Tiramisu",
        description: "lorem ipsum",
        imagePath: "images/desserts/tiramisu.jpg",
        price: 3.99,
        category: FoodCategory.deserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Cocoa",
        description: "lorem ipsum",
        imagePath: "images/drinks/cocoa.jpg",
        price: 3.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Coconut Water",
        description: "lorem ipsum",
        imagePath: "images/drinks/coconut_water.jpg",
        price: 3.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Coke",
        description: "lorem ipsum",
        imagePath: "images/drinks/coke.jpg",
        price: 3.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Herbal Tea",
        description: "lorem ipsum",
        imagePath: "images/drinks/herbal_tea.jpg",
        price: 3.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Smoothies",
        description: "lorem ipsum",
        imagePath: "images/drinks/smoothies.jpg",
        price: 3.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Creamed Corn",
        description: "lorem ipsum",
        imagePath: "images/sides/creamed_corn.jpg",
        price: 3.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Fries",
        description: "lorem ipsum",
        imagePath: "images/sides/fries.jpg",
        price: 3.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Salads",
        description: "lorem ipsum",
        imagePath: "images/sides/salads.jpg",
        price: 3.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
    Food(
        name: "Spring Rolls",
        description: "lorem ipsum",
        imagePath: "images/sides/spring_rolls.jpg",
        price: 3.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avocado", price: 2.19)
        ]),
  ];

  // user cart
  final List<CartItem> _cart = [];

  // delivery address (user can change/update)
  String _deliveryAddress = "Km9 Nguyen Trai";

  // Getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  // Operations



  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if food items are the same and the list of selected addons are the same
      return (item.food == food) && (ListEquality().equals(item.selectedAddons, selectedAddons));
    });

    // if item already exists, increase its quantity.
    // Otherwise add a new item to cart
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }
  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
  
  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }
  
  
  // Helpers

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate = DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final cartItem in _cart) {
      receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("---------");
    receipt.writeln();
    receipt.writeln("Total item: ${getTotalItemCount()}");
    receipt.writeln("Total price: ${getTotalPrice()}");
    receipt.writeln();
    receipt.writeln("Delivering to ${deliveryAddress}" );

   return receipt.toString(); 
  }
  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }
  // format list of addons into a string money
  String _formatAddons(List<Addon> addons) {
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(", ");
  }
}
