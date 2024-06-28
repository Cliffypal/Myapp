import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/shoe.dart';


class ShoeTitle extends StatelessWidget {
  Shoe shoe;
  ShoeTitle({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),

          // description
         Text(shoe.description,
           style: TextStyle(color: Colors.grey[600]) ,
         ),

           //price / details
          Padding(
            padding: const EdgeInsets.only(left:25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(shoe.name,
                      style:const TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize: 20 ,
                    ),
                    ),
                   const SizedBox(height: 5),
                      Text(
                           '/122' + shoe.price,
                        style: const TextStyle(
                       color: Colors.grey,
                      ),
                    ),   //plus button
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: const Icon (
                        Icons.add,
                        color:Colors.white ,
                      ),
                    ),
                    //
                  ],
                ),



            ],
            ),
          ),

          //button to add to cart

          const Padding(
            padding: EdgeInsets.only(top: 25.0, left: 25, right:25 ),
            child: Divider(color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
