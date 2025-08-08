import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.0),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe picture
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(shoe.imagePath),
          ),

          // shoe description
          Text(shoe.description, style: TextStyle(color: Colors.grey[800])),

          // details
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text(shoe.name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),),
                    SizedBox(height: 5),
                    // price
                    Text(shoe.price + "£", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                // add button
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(color: Colors.black, borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), bottomRight: Radius.circular(12.0))),
                  child: const Icon(Icons.add_shopping_cart, color: Colors.white,)
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
