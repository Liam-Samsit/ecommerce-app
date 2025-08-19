import 'package:ecommerce_app/components/cart_item.dart';
import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:
          (context, value, child) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // heading
                Text(
                  "Cart",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
            
                const SizedBox(height: 20),
            
                Expanded(
                  child: ListView.builder(
                    itemCount: value.getCartList().length,
                    itemBuilder: (context, index) {
                      // get each shoe
                      Shoe individualShoe = value.getCartList()[index];
            
                      // return cart item
                      return CartItem(shoe: individualShoe);
                    },
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
