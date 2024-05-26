import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_cart_tile.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      // cart
      final userCart = restaurant.cart;

      // UI
      return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            // clear cart button
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("Are you sure to remove all item?"),
                            actions: [
                              // cancel button
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text("Cancle")),
                              // yes button
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    restaurant.clearCart();
                                  },
                                  child: const Text("Yes")),
                            ],
                          ));
                },
                icon: Icon(Icons.delete))
          ],
        ),
        body: userCart.isEmpty
            ? const Center(
                child: Text("Cart is Empty."),
              )
            : Column(
                children: [
                  // cart list
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: userCart.isEmpty
                              ? Center(child: Text("Cart is empty."))
                              : ListView.builder(
                                  itemCount: userCart.length,
                                  itemBuilder: (context, index) {
                                    // get individual cart item
                                    final cartItem = userCart[index];
                                    return MyCartTile(cartItem: cartItem);
                                  }),
                        ),
                      ],
                    ),
                  ),

                  // pay button
                  MyButton(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaymentPage())),
                      text: "Go to checkout"),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
      );
    });
  }
}
