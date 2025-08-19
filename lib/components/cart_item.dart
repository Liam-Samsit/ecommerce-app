import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  //remove item from cart
  void removeCartItem(){
    Provider.of<Cart>(context, listen:false).removeItemCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(widget.shoe.imagePath, fit: BoxFit.cover),
          ),
        ),
        title: Text(widget.shoe.name),
        subtitle: Text("${widget.shoe.price}£"),
        trailing: IconButton(
          onPressed: () => removeCartItem,
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
